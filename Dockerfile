FROM rennancockles/resume-template:latest

LABEL maintainer="Rennan Cockles <r3ck.dev@gmail.com>"

RUN apk update && apk add git

WORKDIR /app

COPY ${INPUT_DIRECTORY} ./src/data/

COPY entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]