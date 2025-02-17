```objectivec
@interface MyClass : NSObject
@property (retain) NSString *myString;
@end

@implementation MyClass
- (void)dealloc {
    [myString release]; // RELEASED
    [super dealloc];
}
@end

// Solution for blocks and retain cycles
@property (nonatomic, strong) NSMutableArray *myArray;

-(void)someMethod {
    __weak MyClass *weakSelf = self; 
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
      //Use weakSelf to access self, or you may cause retain cycle
      [weakSelf.myArray addObject:@"Object"];
    });
}

// Example of exception handling
@try {
    // Code that might throw an exception
} @catch (NSException *exception) {
    // Handle the exception gracefully
    NSLog("Exception caught: %@", exception);
} @finally {
    // Clean up resources
}
```