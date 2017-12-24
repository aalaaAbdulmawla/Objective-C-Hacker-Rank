#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    int grades[n];
    for(int grades_i = 0; grades_i < n; grades_i++){
       scanf("%d",&grades[grades_i]);
       if (grades[grades_i] < 38) printf("%d\n", grades[grades_i]);
       else{
           int modValue = grades[grades_i]%10;
           int inCreaseValue = modValue < 5 ? 5-modValue : 10-modValue;
           if (modValue != 5 && modValue!=0 && inCreaseValue < 3)
               grades[grades_i] += inCreaseValue;
           printf("%d\n", grades[grades_i]);
       }
    }
    [pool drain];
    return 0;
}

