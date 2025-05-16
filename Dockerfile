FROM rennancockles/python-resume-generator:latest

LABEL maintainer="Rennan Cockles <r3ck.dev@gmail.com>"

WORKDIR /app

COPY entrypoint.sh .

ENTRYPOINT ["/app/entrypoint.sh"]
