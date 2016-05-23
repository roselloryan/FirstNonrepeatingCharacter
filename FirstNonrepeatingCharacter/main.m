//
//  main.m
//  FirstNonrepeatingCharacter


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"tooth";
        
        NSMutableArray *lineArrayOfLetters = [[NSMutableArray alloc]init];
        
        NSInteger i = 0;
        for (i = 0; i < line.length; i++) {
            NSString *charOneString = [NSString stringWithFormat:@"%c", [line characterAtIndex:i]];
            [lineArrayOfLetters addObject:charOneString];
        }
//        NSLog(@"lineArrayOfLetters: %@", lineArrayOfLetters);
        
        NSMutableArray *arrayToDeleteFrom = [lineArrayOfLetters mutableCopy];
        
//        NSLog(@"arrayToDeleteFrom: %@", arrayToDeleteFrom);
        
        NSInteger j = 0;
        for (j = 0; j < lineArrayOfLetters.count; j++) {
            
            NSInteger beforeCount = arrayToDeleteFrom.count;
//            NSLog(@"beforeCount:%ld", beforeCount);
            
            NSString *letterString = [lineArrayOfLetters objectAtIndex:j];
            [arrayToDeleteFrom removeObject:letterString];
            
            NSInteger afterCount = arrayToDeleteFrom.count;
//            NSLog(@"afterCount:%ld", afterCount);
//            
//            NSLog(@"letterString:%@",letterString);
//            
//            NSLog(@"lineArrayOfLetters: %@", lineArrayOfLetters);
//            NSLog(@"arrayToDeleteFrom: %@", arrayToDeleteFrom);
            
            if (beforeCount - afterCount == 1) {
                NSLog(@"solution: %@", [lineArrayOfLetters objectAtIndex:j]);
                break;
            }
        }

    }
    return 0;
}
