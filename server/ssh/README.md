### Introduction

- SSH has become the default method of accessing a remote Linux server these days.
- to establish communication between two computers in a remote fashion. And let’s not forget the secure part of its name; SSH encrypts all traffic to prevent attacks like hijacking and eavesdropping while offering different authentication methods and a myriad of configuration options. a
- The SSH protocol is based on *server-client architecture*. The “server” allows
the “client” to be connected over a communication channel. This channel is
encrypted and the exchange is governed by the use of public and private SSH
keys.


- ssh-agent is a program to hold private keys used for public key authentication
(RSA, DSA). The idea is that ssh-agent is started in the beginning of an
X-session or a login session, and all other windows or programs are started as
clients to the ssh-agent program. Through use of environment variables the
agent can be located and automatically used for authentication when logging in
to other machines using ssh(1).

[Relationship](https://itsfoss.com/wp-content/uploads/2021/05/ssh-diagram-800x259.png)

### Setting up SSH server 

### Connecting to remote serve

### Notes

1 It is important to keep a distinction between the server and client. You might
not want your personal computer to act as SSH server unless you have good
reasons where you want others to connect to your system via SSH. Generally, you have a dedicated system working as the server. For example, a
Raspberry Pi running Ubuntu server.

### Libraries

 [ ] https://linuxhint.com/ssh-copy-id-ubuntu/
