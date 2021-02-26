FROM weijia/docker-python3-django

RUN pip install django jupyter ipython django-extensions

WORKDIR /app

RUN echo 'INSTALLED_APPS += ("django_extensions",)' >> local/local_settings/settings.py
RUN jupyter notebook --generate-config

# simple but not safe
RUN echo "c.NotebookApp.allow_root = True" > /root/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.ip = '0.0.0.0'" > /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8888
CMD ["python", "manage.py", "shell_plus", "0.0.0.0:8888"]