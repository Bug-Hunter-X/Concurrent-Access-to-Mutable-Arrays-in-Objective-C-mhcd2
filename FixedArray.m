To fix this, you need to protect the mutable array with a lock. Here's how to use `@synchronized`:

```objectivec
@interface MyObject : NSObject
@property (nonatomic, strong) NSMutableArray *myArray;
@end

@implementation MyObject
- (void)addObject:(id)object {
    @synchronized(self.myArray) {
        [self.myArray addObject:object];
    }
}

- (void)removeObject:(id)object {
    @synchronized(self.myArray) {
        [self.myArray removeObject:object];
    }
}
@end
```

By using `@synchronized(self.myArray)`, only one thread can access and modify `myArray` at a time, preventing race conditions and ensuring data integrity.