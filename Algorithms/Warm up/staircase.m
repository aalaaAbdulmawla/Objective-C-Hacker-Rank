#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n-1-i; j++) printf(" ");
        for (int k = 0; k <= i; k++) printf("#");
        puts("");
    }
    [pool drain];
    return 0;
}