FROM python:3.11-slim

RUN apt-get update && apt-get install -y build-essential gcc wget git && rm -rf /var/lib/apt/lists/*

RUN mkdir /src

WORKDIR /src

ADD /src /src

ADD README.md /

RUN pip install --no-cache-dir -r requirements.txt

# Comando para ejecutar la aplicación Streamlit
CMD ["streamlit", "run", "app.py"]



