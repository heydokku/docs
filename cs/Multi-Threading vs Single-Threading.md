### Definitions

`A thread` is a sequence of instructions that *executes in parallel with other threads* that are part of the same root process

TODO:
One processor can only process one process?

`multi-threads` allow to execute more than one sequential set (thread) of instructions.

allows multiple concurrent tasks to be performed within a single process.
NOTE: But this ability of the CPU has to be supported by the operating system and the program or application you’re sing to work.

- `multi-threads` on single processor (single core)
On a single processor, multithreading gives the illusion of running in parallel. In reality, the processor is switching by using a scheduling algorithm. Or, it’s switching based on a combination of external inputs (interrupts) and how the threads have been prioritized

- `multi-threads` on multiple processors (multiple cores)

On multiple processor cores, threads are truly parallel. Individual microprocessors work together to achieve the result more efficiently. There are multiple parallel, concurrent tasks happening at once.

- Examples

A basic example of multithreading is downloading two files from two different tabs in a web browser. Each tab uses a new thread to download the requested file. No tab waits for the other one to finish, they are downloading concurrently.

- [Explanation Image](https://www.baeldung.com/wp-content/uploads/sites/4/2020/07/multithreading.png)

### Single-threaded app and Multiple-threaded app

IF Your app doesn’t support multithreading. You can still benefit from having as many cores as possible. A single-threaded app can use a multicore CPU, each activity will get a core unto itself. Unless you have more single-threaded apps than cores
