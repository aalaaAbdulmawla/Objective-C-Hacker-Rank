#import <Foundation/Foundation.h>
long arr[10000010];

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    int m;
    scanf("%i %i",&n,&m);
    for(int a0 = 0; a0 < m; a0++){
        int a;
        int b;
        int k;
        scanf("%i %i %i",&a,&b,&k);
        arr[a-1] += k;
        if (b < n) arr[b] -= k;
    }
    long max = arr[0];
    for(int i = 1; i < n; i++){
        arr[i] += arr[i-1];
        max = MAX(max, arr[i]);
    }
    printf("%lld", max);
    [pool drain];
    return 0;
}

