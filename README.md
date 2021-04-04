# docker-python3-django-with-jupyter

docker run -it --rm -v/home/ubuntu/codes/agriculture/django-dev-server/external_app_repos:/app/django-dev-server/external_app_repos \
  -v/home/ubuntu/codes/agriculture/django-dev-server/local:/app/django-dev-server/local \
  weijia/docker-python3-django-with-jupyter:latest bash
