#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n, q, lastAnswer = 0;
    scanf("%d %d", &n, &q);
    NSMutableArray *seqList = [[NSMutableArray alloc] init];
    for(int i = 0; i < n; i++){
        NSMutableArray *innerList = [[NSMutableArray alloc] init];
        [seqList addObject:innerList];
    }
    for (int i = 0; i < q; i++){
        int queryNum, x, y;
        scanf("%d %d %d", &queryNum, &x, &y);
        int index = (x^lastAnswer)%n;
        if (queryNum == 1){
            [[seqList objectAtIndex:index] addObject:[NSNumber numberWithInt:y]];
        }else{
            int size = [[seqList objectAtIndex:index] count];
            int element = [[[seqList objectAtIndex:index] objectAtIndex:(y%size)] intValue];
            lastAnswer = element;
            printf("%d\n", lastAnswer);
        }
      
    }
    [pool drain];
    return 0;
}