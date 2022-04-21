WSGI is the Web Server Gateway Interface. 

WSGI[1] is **not a server, a python module, a framework**, an API or any kind of
software. It is just an interface specification by which server and application
communicate. Both server and application interface sides are specified in the
PEP 3333. If an application (or framework or toolkit) is written to the WSGI
spec then it will run on any server written to that spec.

WSGI applications (meaning WSGI compliant) can be stacked. Those in the middle
of the stack are called middleware and must implement both sides of the WSGI
interface, application and server. 

- A WSGI server (meaning WSGI compliant, nginx, unicorn, gunicorn..) only 
receives the request from the client -> pass it to the application 
and then send the response returned by the application to the client. 
It does nothing else. 

Comment: All the gory details must be supplied by the application or middleware.

- It is a specification that describes how a web server communicates with web applications, and how web applications

- Can be chained together to process one request.
