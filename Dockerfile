FROM tabulario/spark-iceberg

RUN pip install 'apache-airflow[spark]==2.10.2' --constraint 'https://raw.githubusercontent.com/apache/airflow/constraints-2.10.2/constraints-3.8.txt'

RUN airflow db migrate

RUN airflow users create --username admin --password admin --firstname admin --lastname admin --role Admin --email admin@example.com