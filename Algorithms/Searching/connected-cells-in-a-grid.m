#import <Foundation/Foundation.h>

struct point{
    int row, col;
};


@interface NSMutableArray (QueueAdditions)
- (void) enqueue:(id) obj;
- (id) dequeue;
@end

@implementation NSMutableArray (QueueAdditions)
- (void) enqueue:(id) obj{
    [self addObject:obj];
}

- (id) dequeue{
    if ([self count] == 0) return nil;
    id firstObj = [self objectAtIndex:0];
    if (firstObj){
        [[firstObj retain] autorelease];
        [self removeObjectAtIndex:0];
    }
    return firstObj;
}
@end


@interface SolveGraph:NSObject
-(void)getLargestComponent:(int)n m:(int)m arr:(int *)arr;
@end

@interface SolveGraph()
-(int)bfs:(int)n m:(int)m arr:(int *)arr visited:(bool *)visited i:(int)i j:(int)j;
@end

@implementation SolveGraph
-(void)getLargestComponent:(int)n m:(int)m arr:(int *)arr{
    int largestComponentSize = 0;
    bool visited[n][m];
    memset(visited, false, sizeof visited);
    for (int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            if((*((arr+i*m)+j) == 1) &&!visited[i][j]){
                largestComponentSize = MAX(largestComponentSize, [self bfs:n 
                                                                         m:m 
                                                                       arr:arr 
                                                                   visited:&visited[0][0]
                                                                         i:i 
                                                                         j:j]);
                                                                        
            }
        }
    }
    printf("%d", largestComponentSize);
}

-(int)bfs:(int)n m:(int)m arr:(int *)arr visited:(bool *)visited i:(int)i j:(int)j{
    int size = 1, dirX[] = {0, 0, 1, -1, -1, -1, 1, 1},
                  dirY[] = {1, -1, 0, 0, -1, 1, 1, -1};
    NSMutableArray * q = [[NSMutableArray alloc] init];
    struct point p;
    p.row = i;
    p.col = j;
    [q enqueue:[NSValue valueWithBytes:&p objCType:@encode(struct point)]];
    *((visited+i*m)+j) = true;
    while ([q count]){
        struct point cur;
        [[q dequeue] getValue:&cur];
        for (int k = 0; k < 8; k++){
            int row = cur.row + dirX[k];
            int col = cur.col + dirY[k];
            if (row >= 0 && row < n && col >= 0 && col < m && ((*((visited+row*m)+col)) == false) && *((arr+row*m)+col) == 1){
                size++;
                *((visited+row*m)+col) = true;
                struct point neighbour;
                neighbour.row = row;
                neighbour.col = col;
                [q enqueue:[NSValue valueWithBytes:&neighbour objCType:@encode(struct point)]];
            }
        }
    }
    return size;
}

@end
int main(int argc, const char * argv []){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n, m;
    scanf("%d", &n);
    scanf("%d", &m);
    int arr[n][m];
    for (int i = 0; i < n; i++)
        for(int j = 0; j < m; j++)
            scanf("%d", &arr[i][j]);
    SolveGraph * solveGraph = [[SolveGraph alloc] init];
    [solveGraph getLargestComponent:n m:m arr:&arr[0][0]];
    [pool drain];
    return 0;
}