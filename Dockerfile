FROM python:3.12-slim
ENV PYTHONUNBUFFERED=1

LABEL Author="Cursion" Support="hello@cursion.dev"

# create the app user
RUN addgroup --system app && adduser --system app 

# installing cursion & deps
RUN python3 -m pip install cursion typer requests rich python-dotenv

# setting user
USER app

# copy entrypoint
COPY entrypoint.sh /entrypoint.sh

# execute
ENTRYPOINT ["/entrypoint.sh"]