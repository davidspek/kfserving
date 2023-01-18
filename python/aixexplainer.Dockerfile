FROM python:3.11.1

COPY . .
RUN pip install --upgrade pip && pip install -e ./kfserving
RUN pip install -e ./aixexplainer
ENTRYPOINT ["python", "-m", "aixserver"]
