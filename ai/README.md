### Introduction

Mainly, now we use machine learning power to feed the AI. So the folder is called machine learning.

[introduction](machine_learning/introduction)
[machine learning flow](https://www.baeldung.com/wp-content/uploads/2019/08/Machine-Learning-Workflow-1.jpg/)

### Basic libraries

[Numpy](Numpy)
[pandas](pandas)


### Big data 

[README](etl/README)

- ETL: Extract, Transform, Load

[Docker with airflow, superset, postgres](https://github.com/l1990790120/local-data-stack)

[0] [Apache Airflow ](etl/airflow): 25k task orchestrator
[0] [prefect](prefect): 8.7k  Cloud-native, the easiest way to automate your data 
[x] [Luigi](etl/luigi) is a Python module that helps you build complex pipelines of batch jobs. It handles dependency resolution, workflow

- Data store

[ ] [Apache Druid ](etl/druid) — 11.7k readltime analytics database
[x] [Apache hive](etl/apache_hive): 4.2k

- Data processing, machine learning

[0] [Dask](data_processing/dask): 9k Monitoring resource
[x] Apache Spark: 33k written in java, No python user uses its

- Data querying, BI

[ ] [Metabase](Metabase) 29k  [Introduction video](https://www.youtube.com/watch?v=AYDE4dsmNec&t=67s)
Can ask the question on the platform
100m+ in hub docker, far than superset

[0] [Apache Superset](etl/superset) 45k  [homepage](https://superset.apache.org/) stars BI, for querying, data visualization, data exploration platform
Alternatives: Tableau, Power BI(Microsoft), can save the queries


- MLOps

[0] [mlflow](mlflow): 11.9k  Open source platform for the machine learning lifecycle 
[ ] argo-workflows: 10.9k  Workflow engine for Kubernetes 
[ ] kubeflow: 11.4k  Machine Learning Toolkit for Kubernetes 


- Deprecated
[x] hadoop: 12k, NOT active

### Deep Learning

[ ] Tensorflow: 148k is an open-source library for dataflow and differentiable programming, widely employed for machine learning applications. Together with its high-level abstraction, Keras, it is a tool of choice for machine learning. They are primarily written in Python and C++ and primarily used in Python. Unlike Spark MLlib, it does not have a polyglot presence.

[ ] [Keras](deep_learning/keras): 54.9k  Deep Learning for humans 

[ ] Theano is another Python-based open-source library for manipulating and evaluating mathematical expressions – for instance, matrix-based expressions, 
which are commonly used in machine learning algorithms. Unlike Spark MLlib, Theano again is primarily used in Python. 
Keras, however, can be used together with a Theano back end.

[x] CNTK Microsoft Cognitive Toolkit (CNTK): NOT active, is a deep learning framework written in C++ that describes computational steps via a directed graph. It can be used in both Python and C++ programs and is primarily used in developing neural networks. There's a Keras back end based on CNTK available for use that provides the familiar intuitive abstraction.
[ ] [Keras](https://github.com/keras-team/keras)
[ ] [Pytorch](https://github.com/pytorch/pytorch)
[ ] [aesara](https://github.com/aesara-devs/aesara)

### Machine learning

[scipy](https://github.com/scikit-learn/scikit-learn)

[ ] scikit-learn
[ ] [AutoML](AutoML): Just Add Data, automatically choose the best model, optimization

- [ ] [request](https://docs.python-requests.org/en/master/)

### Visualization

[ ] [plotly- built on plotly.js, interactive graph](https://github.com/plotly/plotly.py/tree/master/doc/python)
[ ] [bokeh - 15k stared used in browser and jupyter lab](https://github.com/bokeh/bokeh)
[ ] [seaborn -  Statistical data visualization in Python, younger brother of Matplotlib](https://github.com/mwaskom/seaborn)
[ ] [Matplotlib-plotting with Python](https://github.com/matplotlib/matplotlib)
[0] [mplfinance-use with Matplotlib, static graph](https://github.com/matplotlib/mplfinance#contents-and-tutorials)


### Algorithms

[ ] [Yolo](Yolo): 24k Object detection in real time


### Note

- Alway start with problem statement
- Machine learning algorithms are sensitive towards data quality

### Services

[ ] PagerDuty is an operations performance platform delivering visibility and actionable intelligence across the entire incident lifecycle.

### My notes

[NOTE](NOTE)

### Ref

[ ] https://github.com/donnemartin/data-science-ipython-notebooks#tensor-flow-tutorials..

[ ] 23k https://github.com/eriklindernoren/ML-From-Scratch#polynomial-regression
[ ] [keras-GAN](keras-gan), pytorch-GAN

