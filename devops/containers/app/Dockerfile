FROM python:3-alpine
RUN apk add --no-cache nushell
RUN pip3 install poetry

WORKDIR /usr/src/app
COPY pyproject.toml poetry.lock poetry.toml ./
RUN poetry install

COPY ./devops/entrypoints/run-web.nu ./

COPY src /usr/src/app/src

ENTRYPOINT [ "nu" ]
CMD ["run-web.nu"]