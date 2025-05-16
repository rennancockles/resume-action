FROM rennancockles/python-resume-generator:latest

LABEL maintainer="Rennan Cockles <r3ck.dev@gmail.com>"

RUN apt-get update && apt-get install git -y

WORKDIR /app

COPY entrypoint.sh .

ENTRYPOINT ["/app/entrypoint.sh"]
