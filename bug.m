In Objective-C, a rare but impactful bug can occur due to improper handling of Objective-C's exception mechanism within blocks or asynchronous operations.  Consider this scenario:

```objectivec
- (void)someMethod {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^ {
        @try {
            // Some potentially failing operation
            [self performRiskyOperation];
        } @catch (NSException *exception) {
            NSLog("Exception caught: ", exception);
            // Crucial: Handle the exception properly here, potentially using dispatch_async to update the UI
        }
    });
}

- (void)performRiskyOperation {
    // Simulate a potential exception
    if (someCondition) {
        @throw [NSException exceptionWithName:@