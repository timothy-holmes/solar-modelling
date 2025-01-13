FROM python:alpine

# environment variables
ENV DEFAULT_USER=solar

# non-root user
RUN adduser -D ${DEFAULT_USER}
USER ${DEFAULT_USER}

COPY requirements.txt ./requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
