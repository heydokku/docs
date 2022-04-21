### What is a Data Vault?

A Data Vault is defined as a detail oriented, historical tracking and
uniquely linked set of normalized tables that support one or more
functional areas of business.

In traditional data warehouse modelling techniques, it is quite costly to make changes on a frequent basis. 
Data Vault, on the other hand, was designed to solve these problems.

### What are Hubs, Sats and Links in Data Vault? 

There are 5 different types of tables in the Data Vault model. The
original Data Vault spec had only 3 of them (Hubs, Sats and Links). The
additional 2 tables (PIT and Bridge) were introduced with Data Vault
2.0.

LNK (red): establishing relationships between business keys (typically
hubs, but links can link to other links); essentially describing a
many-to-many relationship. Links are often used to deal with changes in
data granularity reducing the impact of adding a new business key to a
linked Hub.

SAT (yellow): holding descriptive attributes that can change over time
(similar to a Kimball Type II slowly changing dimension). Where Hubs and
