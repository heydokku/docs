### Introduction

The structure of a pipeline in Luigi, like one of many pipeline systems, resembles that of a graph. 
It contains nodes, where information is processed and edges connecting the nodes, transferring the information to the next node

- The nodes in Luigi are called Tasks

- The edges are called Targets

### Tasks

task()

Tasks are the basic building blocks of Luigi and where the real work actually happens.

To create a task you have to create a class and inherit the class luigi.Task.

Within the new class, there are contained at least one or all, of the following methods:

- NOTE: SHould create *these 4 functions in order* of Task class
- 
    requires()
    run()
    output()
    targets

### Central scheduler

- Make sure two instances of the same task are not running simultaneously
- Provide visualization of everything that’s going on.

### Commands    

- open web server browser at http://localhost:8082

`luigid`

### Pros
- Can use with flask for web server

### Cons
- rely on cron. No inbuilt-scheduler

### Running luigi
- From CLI
- In python code for adding logic
- 
### Repos

[flask with luigi](https://github.com/Atreya22/luigi_rosmann_sales/blob/edb179d199e0322ba3b8f338fdd7c0372e760fd5/predict_sales.py)
