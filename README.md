# Objective-C Unhandled Exception in Asynchronous Block

This repository demonstrates a potential bug in Objective-C related to unhandled exceptions within asynchronous blocks.  The bug occurs when an exception is thrown in a background thread and is not properly handled, leading to crashes or unexpected behavior. The solution provides a proper mechanism to handle exceptions and safely update the UI.

## Bug

The `bug.m` file contains code that demonstrates the bug. An exception is thrown within a `dispatch_async` block. The exception is caught, but the UI update is not handled correctly, resulting in a potential crash. 

## Solution

The `bugSolution.m` file provides a solution by correctly handling exceptions within the asynchronous block.  It ensures that UI updates are performed on the main thread, preventing crashes and ensuring application stability.

## How to reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the app (using the bug.m file first to witness the issue and then bugSolution.m file for the fix).

## License

MIT