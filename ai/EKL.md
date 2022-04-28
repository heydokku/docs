### ELK

1 Log Management
2 Performance Monitoring
3 Application Performance Monitoring
4 Data visualization
5 Security Alert
6 Application data analysis: For enterprise

Can install on aws https://www.youtube.com/watch?v=cC4GGJ0JsSE&t=1221s

### What is Elastic Machine Learning?

- Train, evaluate, monitor, infer: *End-to-end machine learning in Elastic*

Machine learning features analyze your data and generate models for its patterns of behavior. The type of analysis that you choose depends on the questions or problems you want to address and the type of data you have available.

- Unsupervised machine learning

There are two types of analysis that can deduce the patterns and relationships within your data without training or intervention: anomaly detection and outlier detection.

1 Anomaly detection requires time series data with (interval: 15m, 1h)

It constructs a probability model and can run continuously to identify unusual events as they occur. The model evolves over time; you can use its insights to forecast future behavior.

2 Outlier detection does not require time series data. It is a type of data frame analytics that identifies unusual points in a data set by analyzing how close each data point is to others and the density of the cluster of points around it. 
It does not run continuously; it generates a copy of your data set where each data point is annotated with an outlier score. The score indicates the extent to which a data point is an outlier compared to other data points.

- Supervised machine learning

There are two types of data frame analytics that require training data sets: classification and regression.

In both cases, the result is a copy of your data set where each data point is annotated with predictions and a trained model, which you can deploy to make predictions for new data. For more information, refer to Introduction to supervised learning.

1 Classification learns relationships between your data points in order to predict discrete categorical values, such as whether a DNS request originates from a malicious or benign domain.

2 Regression learns relationships between your data points in order to predict continuous numerical values, such as the response time for a web request.

### Kybala tips

- Use Fields View

### Experiment with kybala (localhost:5601)

- Elastic Agent: Single agent. One-click integrations. is a Desktop App
With Elastic Agent you can collect all forms of data from anywhere with a single unified agent per host. One thing to install,
configure, and scale.

- Fleet is a web-based UI in Kibana for centrally managing Elastic Agents. 
To use Fleet, you install Elastic Agent on each host you want to monitor or protect, then enroll the agent in a policy defined in Kibana. 
The policy includes integrations that specify how to collect observability data from specific services and protect endpoints. The Elastic Agent connects to a trusted Fleet Server instance to retrieve the policy and report agent events.

- Pros:
1 Analytics
Dashboard, 
Canvas,: Can illustrate the data with beautiful images, easy to see and read
Maps: for geolocation data, can view the map dynamically like google map
Save query

2 Observability

While logs are about a specific event, metrics are a measurement at a point in time for the system. 

Application Performance Monitoring (APM) collects in-depth performance metrics and errors from inside your application. It allows you to monitor the performance of thousands of applications in real time

3 Integration

Can integrate with Postgresql (localhost:5432) for logs of Postgresql

4 Security: Secure my host by logging the applications on the host
TODO: Try more

5 

- Cons
Loading is slow

