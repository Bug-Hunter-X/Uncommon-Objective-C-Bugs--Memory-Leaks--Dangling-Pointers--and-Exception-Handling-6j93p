# Uncommon Objective-C Bugs

This repository demonstrates some less-obvious bugs in Objective-C, focusing on memory management and exception handling.  These are often tricky to debug because they may not manifest immediately but rather lead to subtle performance issues or crashes later on.

## Bugs:

* **Memory Leaks:** Improper release of retained properties (`retain`, `copy`) in `dealloc` results in memory leaks.
* **Dangling Pointers:** Capturing objects within blocks that outlive those objects creates dangling pointers, leading to crashes.
* **Exception Handling:** The lack of proper exception handling can lead to unexpected application termination.

## Solutions:

The `bugSolution.m` file provides corrected versions of the buggy code, addressing the aforementioned issues.  It showcases the importance of meticulous memory management using `release` or ARC to avoid memory leaks, the use of `__weak` to prevent retain cycles, and the implementation of comprehensive exception handling.