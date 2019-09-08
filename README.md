# AppleTechAsses
Apple Technical Assessment 

#### Assessment 
```
Domain: say we have an ecommerce site with products divided into categories like toys, electronics etc. We receive events like product was seen (impression), product page was opened, product was purchased etc. 

Task #1: 
Enrich incoming data with user sessions. Definition of a session: for each user, it contains consecutive events that belong to a single category  and are not more than 5 minutes away from each other. Output should look like this (session columns are in bold):
eventTime, eventType, category, userId, …, sessionId, sessionStartTime, sessionEndTime  
Implement it using 1) sql window functions and 2) Spark aggregator.

Task #2:
Compute the following statistics:
-	For each category find median session duration
-	For each category find # of unique users spending less than 1 min, 1 to 5 mins and more than 5 mins
-	For each category find top 10 products ranked by time spent by users on product pages - this may require different type of sessions. For this particular task, session lasts until the user is looking at particular product. When particular user switches to another product the new session starts.

General notes:
-	Ideally tasks should be implemented using pure SQL on top of Spark DataFrame API.
-	Spark version 2.2 or higher
-	README file in the project can be a plus 
-	Example of the input file

```

## How to Run with Docker (easiest way)
* Downlod repository to {path_to_repo_dir}. cd to {path_to_repo_dir} using terminal) *

```
### run docker
docker build -t apple_assign/jupyter .
docker run -p 8888:8888 apple_assign/jupyter

### enjoy project
copy link from terminal to browser 
open
```

### Prerequisites
* [docker](https://www.docker.com/products/docker-desktop) - docker


## How to Run Local
* Downlod repository to {path_to_repo_dir} ) *
```
###### run jupyter notebook with path to repo directory
jupyter notebook --notebook-dir {path_to_repo_dir}

##### open .ipynb file
click on ApplePyspark.ipynb
```

### Prerequisites

* [spark 2.2.2 and higher](https://www.apache.org/dyn/closer.lua/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz) - Spark
* [python3](https://www.python.org/downloads/) - Python3
* [jupyter](https://jupyter.org/) - Jupyter Notebook


## Next Steps `Unfortunately have no enough time :( `
*  Generate python file from Jupyter Notbook to be able to submit job with spark-submit *
*  Implement the same logic with Scala SBT or Scala Maven project *
*  Implement the same with scala sbt project *
*  Cover code with unit tests oncve it in seperate class *
*  Add docker compose file to allow run the project with single command *
