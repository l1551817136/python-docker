FROM python:3.5.9-buster
LABEL maintainer="Miyazawa Tomoka <honoka@honoka.cc>"
EXPOSE 9090
VOLUME ["/app", "/var/log/uwsgi", "/configs"]
WORKDIR /app
COPY start.sh /bin/start.sh
RUN pip install --no-cache-dir uWSGI \
    && chmod +x /bin/start.sh
ENTRYPOINT ["/bin/sh", "-c", "/bin/start.sh"]