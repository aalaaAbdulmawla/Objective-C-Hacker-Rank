#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%d", &n);
    char * str = (char*)malloc(2000010*sizeof(char));
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    for (int i = 0; i < n; i++){
        scanf("%s", str);
        NSString * s = [NSString stringWithFormat:@"%s", str];
        [arr addObject:s];
    }
    NSArray *arr2 = [[NSArray alloc] init];
    arr2 = [arr sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
       if ([a length] < [b length]) return NSOrderedAscending;
       if ([a length] > [b length]) return NSOrderedDescending;
       for(int i = 0; i < [a length]; i++){
           char A = [a characterAtIndex:i];
           char B = [b characterAtIndex:i];
           if (A < B) return NSOrderedAscending;
           if (A > B) return NSOrderedDescending;
       }
       return NSOrderedSame;
    }];
    for(NSString *element in arr2)
        printf("%s\n", [element UTF8String]);
    [pool drain];
    return 0;
}

