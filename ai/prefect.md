### Examples

[prefect examples](https://github.com/PrefectHQ/prefect/tree/master/examples)
[best to use prefect with dask](https://docs.google.com/presentation/d/1hGqm5GeeXLR3oKlV1LnrC6UTj8BSV4ZSLHOhA9jF8q0/edit#slide=id.ga4eb8930b8_0_1158)

### Introduction

*Workflow* orchestration tool

Prefect is etl cloud - startup, 57.6mnl funding ( very big). 

- *Prefect Cloud* and the *Prefect Server* are two ready-to-use state database and UI backends that automatically extend the Prefect Core engine with a rich GraphQL API to make orchestration of your flows easy.

If you want to run a simple flow and have no need (yet) for an API or
UI, then check out our core docs.

Prefect ships with a number of optional dependencies, which can be
installed using "extras" syntax:

`pip install "prefect[extra_1, extra_2]"`

- A flow is a container for tasks and shows the direction of work and the
dependencies between tasks.
- In order for your flow to be managed by a Prefect backend (either
Prefect Cloud or Prefect Core server) it must first be registered.

[Run a flow locally](https://docs.prefect.io/orchestration/getting-started/basic-core-flow.html#run-a-flow)
- The Prefect *orchestration layer* lets you move from running single flows
as scripts to running, monitoring, and scheduling many flows through a
single web UI.

### Prefect server

- require docker and docker-compose to run,

Prefect Server is composed of a few different services: UI, postgres, towel, hasura, Apolo

`prefect backend server`
`prefect server start`

`localhost:8080`
`http://localhost:4200/graphql` communicate with Apolo endpoint

### Prefect server

use prefect cloud
`prefect backend cloud`

`prefect server start`

### API

- use these keys to interact with the GraphQL API

```sh
# authenticate with an API key, we recommend using the CLI.
$ prefect auth login --key <YOUR-KEY>
```

### Start an Agent


Agents *watch* for any scheduled flow runs and execute them accordingly on your
infrastructure.

Prefect has many different kinds of Agents for deploying on different
platforms (such as Kubernetes, ECS, and Docker).

Here we'll start a Local Agent for deploying flows locally on a single
machine.

`prefect agent local start`

This takes you to a new page for the flow run. Here you can track
activity for a specific flow run, view the state of individual tasks,

### Parameters

To start a flow run with non-default values for a parameter, you can
click the "Run" button (middle of the flow page) instead of the "Quick
Run" button. This brings you to a run page where you can configure more.

### Basics
Mark functions as tasks and call them on each other to build up a flow.
- Task
- Flow
- Task Runner: 

Users organize Tasks into Flows, and Prefect takes care of the rest.

### How to run tasks

j
### Communicate with API
https://docs.prefect.io/orchestration/concepts/kv_store.html#listing-keys

- Python Cor Client
- CLI
- GraphQL

### KV Store
Khttps://docs.prefect.io/orchestration/agents/overview.html#agent-typesey Value Store is a managed metadata database for Prefect Cloud.

### Predefined-tasks in prefect
 
### Coorditation

- use Dask for data processsing

### Executors

Choosing an Executor

Prefect's different executors have different performance (and complexity) characteristics. Choosing a good configuration can greatly improve your flow's performance. Here's some general recommendations:

    If your flow already runs "fast enough", or doesn't have opportunities for parallelism (e.g. mapped tasks) 
    you should use the LocalExecutor. It's the simplest option, and will be the easiest to manage.

    If your flow doesn't require excessive memory or CPU and is fine running on a single node, 
    you should use the LocalDaskExecutor. It's still pretty lightweight, but lets tasks run in parallel as local threads or processes.

    If your flow could benefit from levels parallelism not available on a single node, or requires more memory than is practical for a single process, you should use the DaskExecutor. 
    This lets you distribute your tasks among multiple nodes across a cluster, and can achieve high levels of parallelism. We recommend using a temporary cluster when possible, but also support connecting to an existing cluster.
