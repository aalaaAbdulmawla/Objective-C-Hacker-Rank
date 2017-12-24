#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    int arr[n], cntPos = 0, cntNeg = 0, cntZero = 0;
    for(int arr_i = 0; arr_i < n; arr_i++){
       scanf("%d",&arr[arr_i]);
       if (arr[arr_i] > 0) cntPos++;
       else if (arr[arr_i] < 0) cntNeg++;
       else cntZero++;
    }   
    
    printf("%0.6f\n%0.6f\n%0.6f",(float)cntPos/n, (float)cntNeg/n, (float)cntZero/n);
    [pool drain];
    return 0;
}
