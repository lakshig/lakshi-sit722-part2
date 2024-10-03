# Dockerfile for book_catalog microservice
FROM python:3.9-slim
WORKDIR /usr/src/app
COPY ./book_catalog /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
ENV DATABASE_URL=postgresql://sit722_6_2p_hx7i_user:mlNHFxeCo3UXKp0oHMSj2sJ0tId3SSEm@dpg-crpsa18gph6c73a2hv40-a.oregon-postgres.render.com/sit722_6_2p_hx7i
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


