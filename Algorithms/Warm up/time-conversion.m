#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (void)printStartingFromIndex: (NSString *)s startIndex: (int) index;
@end

@implementation SampleClass
 - (void) printStartingFromIndex: (NSString *)s startIndex: (int) index {
     for(int i = index; i < [s length]-2; i++){
                printf("%c", [s characterAtIndex: i]);
     }
 }
@end

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString* s;
    char* s_temp = (char *)malloc(512000 * sizeof(char));
    scanf("%s",s_temp);
    s = [NSString stringWithFormat:@"%s", s_temp];
    
    NSArray *array = [s componentsSeparatedByString:@":"];
    int hour = [array[0] intValue];
    SampleClass *sampleClass = [[SampleClass alloc]init];

    if ([array[2]  characterAtIndex:[array[2] length]-2] == 'A' && hour == 12){
        printf("00:");
        [sampleClass printStartingFromIndex: s startIndex:3];
    }else if ([array[2]  characterAtIndex:[array[2] length]-2] == 'P' && hour != 12){
        hour += 12;
        printf("%d:", hour);
        [sampleClass printStartingFromIndex: s startIndex:3];
    }else{
        [sampleClass printStartingFromIndex: s startIndex:0];
    }
    
    [pool drain];
    return 0;
}

