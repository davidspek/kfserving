FROM python:3.10.2-slim

COPY . .
RUN pip install --upgrade pip && pip install kfserving
RUN pip install -e .
ENTRYPOINT ["python", "-m", "image_transformer"]
