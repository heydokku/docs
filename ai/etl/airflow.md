this is one of the most critical decisions.
 
batch data processing

### Why airflow ?

How is it different compared to Cron?

Because of a number of factors, Apache Airflow has replaced the Cron:

• Building a relationship between jobs in cron is a pain, whereas it’s as simple as
  writing Python code in Airflow.
• Cron needs outside assistance to log, track, and handle tasks. Airflow offers a user
interface for tracking and monitoring workflow execution.
• Cron tasks cannot be repeated unless they are explicitly specified. The Airflow keeps
track of all jobs completed.
• Another distinction is that Airflow is easily extendable, whereas Cron is not.

### Basics

1 Dag: is a collection of tasks
2 Task
3 Operator

### Airflow Cons

- Diffiult to config, create connection
- I must install seperate providers every time such as postgresql-provider, telegram 


### Executor

- The SequentialExecutor is the default executor when you first install airflow. 
It is the only executor that can be used with sqlite since sqlite doesn't support multiple connections. This executor will only run one task instance at a time. For production use case, please use other executors.

- Celery executor

### Installation

- Install airflow with docker
[ ]  [official docs](https://airflow.apache.org/docs/apache-airflow/2.0.1/start/docker.html) 
[x] [pucker/docker-airflowguide](https://hevodata.com/learn/running-airflow-in-docker/) [github](https://github.com/puckel/docker-airflow)

Requirement: Ram 4G
CPU: 2core

[Deploy Airflow on Ubuntu Server](https://www.linkedin.com/pulse/deploying-airflow-20-ubuntu-2004-vps-nginx-https-setup-ivan-kumeyko)

### Use cases

• Creating a Data Studio dashboard using Airflow and Google BigQuery.
• Airflow is being used to help construct and manage a data lake on AWS.
• Airflow is being used to help with the upgrading of production while reducing downtime.

### Attention

DO NOT use SQLite as metadata DB in production.
DO NOT use SequentialExecutor in production. 

### Job testing
