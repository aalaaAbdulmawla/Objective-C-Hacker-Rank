#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    int arr[n];
    for(int arr_i = 0; arr_i < n; arr_i++){
       scanf("%d",&arr[arr_i]);
    }
    for (int i = n-1; i >= 0; i--) printf("%d ", arr[i]);
    [pool drain];
    return 0;
}

