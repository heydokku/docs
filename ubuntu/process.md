In Linux, there are three types of processes: interactive, batch and daemon.

Interactive processes are those which are run by a user at the command line are called
interactive processes.

Batch processes are processes that are not associated with the command line and are
presented from a list of processes. Think of these as “groups of tasks”. These are best at
times when the system usage is low. System backups, for example, are usually run at night
since the daytime workers aren’t using the system. When I was a full-time system
administrator, I often ran disk usage inventories, system behavior analysis scripts, and
so on, at night.

**Interactive processes and batch jobs are not daemons even though they can be run in the
background and can do some monitoring work**. They key is that these two types of processes
involve human input through some sort of terminal control. Daemons do not need a person to
start them up.
