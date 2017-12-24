#import <Foundation/Foundation.h>
@interface CountWords:NSObject
-(void)printCountWords:(NSString*)str;
@end

@implementation CountWords
    -(void)printCountWords:(NSString*)str {
        int count = 1;
        for (int i = 0; i < [str length]; i++){
            char c = [str characterAtIndex:i];
            if ( [[NSCharacterSet uppercaseLetterCharacterSet] 
                characterIsMember:[str characterAtIndex:i]])
                count++;
        }
        printf("%d", count);
    }

@end

int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString* s;
    char* s_temp = (char *)malloc(100010 * sizeof(char));
    scanf("%s",s_temp);
    s = [NSString stringWithFormat:@"%s", s_temp];
    CountWords * countWords = [[CountWords alloc] init];
    [countWords printCountWords:s];
    [pool drain];
    return 0;
}

