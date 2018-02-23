# Servicio web para componer en la nube

Segundo servicio web complejo para despliegue, incluyendo logstash y
cosas, para usar con docker cloud.

## Instalar localmente

	pip install -r requirements.txt

Puedes usar

	python setup.py test

para hacer pruebas y

	python setup.py run
	
para ejecutarlo usando gunicorn.



## Instalar servicio docker local

Si tienes docker-compose instalado, simplemente `docker-compose up`

## Instalar servicio docker local

Si tienes docker-cloud instalado, simplemente `docker-cloud stack
up`. En el directorio hay una serie de scripts para ir creando los
nodos y hacer una serie de tests con él. 



