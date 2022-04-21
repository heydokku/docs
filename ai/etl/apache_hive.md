### Why apache hive?

Developers were required to write complex map-reduce codes to work with *Hadoop*. 
This is Facebook’s Apache Hive came to rescue. 

Most of the Data Scientists use SQL queries in order to explore the data and get valuable insights from them. 
Now, as the volume of data is growing at such a high pace, we need new dedicated tools to deal with big volumes of data.

We can write SQL like queries in the hive and in the backend it converts them into the map-reduce jobs.


    Hive Clients: It allows us to write hive applications using different types of clients such as thrift server, JDBC driver for Java, and Hive applications and also supports the applications that use ODBC protocol.
    Hive Services: As a developer, if we wish to process any data, we need to use the hive services such as hive CLI (Command Line Interface). In addition to that hive also provides a web-based interface to run the hive applications.
    Hive Driver: It is capable of receiving queries from multiple resources like thrift, JDBC, and ODBS using the hive server and directly from hive CLI and web-based UI. After receiving the queries, it transfers it to the compiler.
    HiveQL Engine: It receives the query from the compiler and converts the SQL like query into the map-reduce jobs.
    Meta Store: Here hive stores the meta-information about the databases like schema of the table, data types of the columns, location in the HDFS, etc
    HDFS: It is simply the **Hadoop distributed file system** used to store the data. 

### Ref

Getting Started with Apache Hive [link](https://www.analyticsvidhya.com/blog/2020/10/getting-started-with-apache-hive/?utm_source=blog&utm_medium=getting-started-with-apache-airflow)

    What is Apache Hive?
    Apache Hive Architecture
    Working of Apache Hive
    Data Types in Apache Hive
    Create and Drop Database
    Create and Drop Table
    Load Data into Table
    Alter Table
    Advantages/Disadvantages of Hive

 
