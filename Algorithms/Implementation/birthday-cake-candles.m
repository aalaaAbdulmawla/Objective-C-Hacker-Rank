#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    int ar[n], max = INT_MIN;
    for(int ar_i = 0; ar_i < n; ar_i++){
       scanf("%i",&ar[ar_i]);
       max = MAX(max, ar[ar_i]);
    }
    int cnt = 0;
    for (int i = 0; i < n; i++)
        if (ar[i] == max) cnt++;
    printf("%d", cnt);
    [pool drain];
    return 0;
}
