#import <Foundation/Foundation.h>
int solveMeFirst(int a, int b) { 
     // Hint: Type return a+b; below 
    return a+b;
}
 
int main (int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int a,b,res;
    scanf("%d %d", &a, &b);
    res = solveMeFirst(a,b);
    printf("%d", res);
    [pool drain];
    return 0;
}

