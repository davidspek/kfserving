FROM python:3.10.5-slim

RUN apt-get update && apt-get install libgomp1

COPY . . 
COPY third_party third_party

# pip 20.x breaks xgboost wheels https://github.com/dmlc/xgboost/issues/5221
RUN pip install pip==19.3.1 && pip install -e ./kfserving
RUN pip install -e ./xgbserver
ENTRYPOINT ["python", "-m", "xgbserver"]
