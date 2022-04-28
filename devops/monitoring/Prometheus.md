### How Does Prometheus Integrate With Your Workloads?

Usage for time-series data

Because Prometheus works by pulling metrics from server (or scrapping metrics, as they call it), *you have to instrument your applications properly*

Officially, Prometheus has client libraries for applications written in Go, Java, Ruby, and Python. Other languages like C#, Node.js, or Rust have support as well.

### Examples

Use Prometheus with go server [link](https://www.sentinelone.com/blog/prometheus-tutorial-detailed-guide-to-getting-started/)

### Prometheus vs Grafana

Prometheus focuses on metrics; not logs. It is great at exposing standard and custom metrics from an application it is monitoring. When it is deployed in a Kubernetes cluster it can discover any pod that is running, and persist any time-series data the application has exposed to its data store. Grafana, on the other hand, cannot define what data is exposed and captured

### Querying language

Prometheus provides a functional query language called PromQL (Prometheus Query Language) that lets the user select and aggregate time series data in real time. The result of an expression can either be shown as a graph, viewed as tabular data in Prometheus's expression browser, or consumed by external systems via the HTTP API.

### Fetching data from server with API end points


### Libraries

- [node_exporter](https://github.com/prometheus/node_exporter): Exporter for machine metrics
