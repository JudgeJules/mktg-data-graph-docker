FROM python:3.12-slim

# Install system libs DuckDB likes (just zstd & curl for Parquet/HTTP)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential curl libzstd1 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY streaming/consumer_faust/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY streaming/consumer_faust/*.py ./      # app.py, utils.py, …
ENTRYPOINT [ "python", "app.py" ]

