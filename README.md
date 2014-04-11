NSThread-blocks
===============

***Category on NSThread that implements block support***

This category adds block support for `NSThread`.

##Example usage
``` objective-c
- (void)dispatchBlock {
  NSLog(@"Log come from a thread: %@", [NSThread currentThread]);
  
	[NSThread detachNewThreadBlock:(void (^)())aBlock {
    NSLog(@"Log comes from a new thread: %@", [NSThread currentThread]);
  }];
}
```
