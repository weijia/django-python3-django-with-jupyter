# docker-python3-django-with-jupyter

docker run -it --rm -v/home/ubuntu/codes/agriculture/django-dev-server/external_app_repos:/app/django-dev-server/external_app_repos \
  -v/home/ubuntu/codes/agriculture/django-dev-server/local:/app/django-dev-server/local -p8888:8888 \
  weijia/docker-python3-django-with-jupyter:latest bash


docker run -it --rm -v/home/ubuntu/codes/agriculture/django-dev-server/:/app/django-dev-server/ -p8889:8889 \
  weijia/docker-python3-django-with-jupyter:latest bash


