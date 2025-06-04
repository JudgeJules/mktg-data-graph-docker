FROM python:3.12-slim

WORKDIR /app

# pin the adapters so dbt deps is deterministic
RUN pip install --no-cache-dir \
      dbt-duckdb==1.9.0 \
      duckdb==0.10.0

COPY dbt /app/dbt
ENTRYPOINT [ "dbt" ]

