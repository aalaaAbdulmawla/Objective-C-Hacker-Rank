//Enter your code here. Read input from STDIN. Print output to STDOUT
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n, q;
    scanf("%d", &n);
    NSMutableArray *array = [[NSMutableArray alloc] init];
    NSString *s;
    
    for (int i = 0; i < n; i++){
        char cstring[25];
        scanf("%s", cstring);
        s = [NSString stringWithCString:cstring encoding:1];
        [array addObject:s];
       // printf("%s", cstring);
    }
    scanf("%d", &q);
    while (q--){
        char cstring[25];
        scanf("%s", cstring);
        s = [NSString stringWithCString:cstring encoding:1];
        int cnt = 0;
        for (int i = 0; i < n; i++){
            if ([[array objectAtIndex:i] isEqualToString:s]){
                cnt++;
            }
        }
        printf("%d\n", cnt);
    }
    
    [pool drain];
    return 0;
}