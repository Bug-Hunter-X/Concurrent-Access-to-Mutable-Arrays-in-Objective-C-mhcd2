# Concurrent Access to Mutable Arrays in Objective-C

This repository demonstrates a common concurrency bug in Objective-C involving mutable arrays.  Without proper synchronization, concurrent access can lead to data corruption or crashes.  The `BuggyArray.m` file shows the problematic code, while `FixedArray.m` presents a corrected version using `@synchronized` for thread safety.