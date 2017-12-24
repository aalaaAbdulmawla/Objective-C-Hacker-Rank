#import <Foundation/Foundation.h>
@interface SampleClass:NSObject
-(int)computeGlassHour: (int [6][6]) arr row:(int)i col:(int)j;
@end

@implementation SampleClass 
   -(int)computeGlassHour: (int [6][6]) arr row:(int)i col:(int)j{
        int top = arr[i][j] + arr[i][j+1] + arr[i][j+2];
        int middle = arr[i+1][j+1];
        int bottom = arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
        return top + middle + bottom;
    }
@end

int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int arr[6][6];
    for(int arr_i = 0; arr_i < 6; arr_i++){
       for(int arr_j = 0; arr_j < 6; arr_j++){
          scanf("%d",&arr[arr_i][arr_j]);
       }
    }
    SampleClass *sampleClass = [[SampleClass alloc] init];
    int ans = INT_MIN;
    for (int i = 0; i <= 3; i++)
        for (int j = 0; j <= 3; j++)
            ans = MAX(ans, [sampleClass computeGlassHour:arr row:i col:j]);
    printf("%d", ans);
    [pool drain];
    return 0;
}

