FROM pytorch/pytorch:latest

# Establecer un directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos al contenedor
COPY /modelos/modelo_bert_base.py /app/modelo_bert_base.py
#COPY /modelos/modelo_distilbert.py /app/modelo_distilbert.py
#COPY /modelos/modelo_albert_tiny.py /app/modelo_albert_tiny.py

# Copiar el conjunto de datos al contenedor
COPY /modelos/ecuPrueba_40.csv /app/ecuPrueba_40.csv

# Copiar el archivo de requisitos al contenedor
COPY requirements.txt /app/requirements.txt

# Instalar los requisitos
RUN pip install -r /app/requirements.txt

# Ejecutar el script de inicio cuando se inicie el contenedor
CMD ["python", "/app/modelo_bert_base.py"]

