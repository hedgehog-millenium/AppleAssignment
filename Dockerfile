  
FROM jupyter/pyspark-notebook 
ENV SPARK_HOME /usr/local/spark
ENV PATH $SPARK_HOME/bin:$PATH
COPY ./ /home/jovyan//