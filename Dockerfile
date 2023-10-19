FROM python:3.10

WORKDIR /code

COPY pyproject.toml .

RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install --no-root

COPY . .

