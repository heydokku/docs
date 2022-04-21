### Asynchronous

An `asynchronous` model allows multiple things to happen at the same time.
Do multiple-functions at the same time.
It's also called *non-blocking IO* programming

When your program calls a long-running function, it doesn’t block the execution flow, and your program continues to run.

*NOTE*: Another approach to asynchronous programming is to make functions that perform a slow action and take an extra argument, a callback function. The action is started, and when it finishes, the callback function is called with the result.

### Synchronous

In synchronous operations tasks are performed one at a time and only when one is completed, *the following is unblocked*. Before that, the following was blocked.
In other words, you need to wait for a task to finish to move to the next one.

### Use Cases of Asynchronous

You should only use it if you’re dealing with independent tasks

[ref link](https://www.baeldung.com/wp-content/uploads/sites/4/2020/07/sync.png)
