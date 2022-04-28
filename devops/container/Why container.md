### Pros
1 lightweight
2 isolation: allows you to run many containers simultaneously on a given host, 
contain everything needed to run the application, 
so you do not need to rely on what is currently installed on the host. 
3 You can easily share containers while you work, and be sure that everyone you share with gets the same container that works in the same way.

The key benefit of containers is standardisation. Now that we have a standard interface for all software
operations we can build standardised tools to manage it. That's what
Kubernetes is -- a standardised tool for scheduling (deploying and
running) software.

Logging, monitoring, security, encryption, circuit-breaking and other error-handling, events, etc. are
now all provided by the platform so that your app can focus on business
logic.

The solution to this is to run the same container in prod that you're
using on your desktop.

### Container requirements

Need to pay attention to the requirements
    CPU: 2 cores
    Memory: 4 GB
    Disk space: 10 GB
