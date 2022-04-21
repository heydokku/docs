### Out
Getting started

  • Introduction to Apache Druid
    • Quickstart
      • Docker
        • Single server deployment
          • Clustered deployment
          
          Tutorials
          
            • Loading files natively
              • Load from Apache Kafka
                • Load from Apache Hadoop
                  • Querying data
                    • Roll-up
                      • Configuring data retention
                        • Updating existing data
                          • Compacting segments
                            • Deleting data
                              • Writing an ingestion spec
                                • Transforming input data
                                  • Kerberized HDFS deep storage
                                  
                                  Design
                                  
                                    • Design
                                      • Segments
                                        • Processes and servers

• Ingestion
  • Data formats
  • Data model
  • Data rollup
  • Partitioning
  • Ingestion spec
  • Schema design tips
  • Data management
  • Compaction
                  
Stream ingestion
                      
□ Apache Kafka
□ Amazon Kinesis

Batch ingestion

□ Native batch
□ Hadoop-based
• Task reference
• Troubleshooting FAQ
                                                      
Querying

• Druid SQL
• Native queries
• Query execution
                                                            
### Why druid ?

• commonly used as the database backend for GUIs of analytical applications, or for highly-concurrent APIs that need
  fast aggregations. Druid works best with event-oriented data.
• You want to load data from Kafka, HDFS, flat files, or object storage like Amazon S3.

• quickly ingest massive quantities of event data, and provide low-latency queries on top of the data.

• You want to load data from Kafka, HDFS, flat files, or object storage like Amazon S3.

### Config
 
Configuration of the Druid Docker container is done via environment variables set within the container. Docker Compose passes
the values from the environment file into the container. The variables may additionally specify paths to the standard Druid
configuration files which must be available within the container.

###  Docker memory requirements
 
The default docker-compose.yml launches eight containers: Zookeeper, PostgreSQL, and six Druid containers. Each Druid service
is configured to use up to 7 GB of memory (6 GB direct memory and 1 GB heap). However, the Quickstart will not use all the
available memory.
 
### Alternatives

Chose Druid over 

[ ] ClickHouse 
[ ] Pinot
[ ] Apache Kylin 

### Ref

https://www.freecodecamp.org/news/open-source-data-warehousing-druid-apache-airflow-superset-f26d149c9b7/

