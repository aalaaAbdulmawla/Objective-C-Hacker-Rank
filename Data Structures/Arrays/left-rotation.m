#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    int d;
    scanf("%i %i",&n,&d);
    int a[n];
    for(int a_i = 0; a_i < n; a_i++){
       scanf("%i",&a[a_i]);
    }
    d %= n;
    for (int i = d; i < n; i++){
        printf("%d ", a[i]);
    }
    for (int i = 0; i < d; i++){
        printf("%d ", a[i]);
    }
    [pool drain];
    return 0;
}
