FROM python:3.10.6

COPY alibiexplainer alibiexplainer
COPY kfserving kfserving
COPY third_party third_party

RUN pip install --upgrade pip && pip install -e ./kfserving
RUN pip install -e ./alibiexplainer
ENTRYPOINT ["python", "-m", "alibiexplainer"]
