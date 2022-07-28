# REF: https://hub.docker.com/_/python
FROM python:3.10.5-slim-bullseye

LABEL "repository"="http://github.com/rojopolis/spellcheck-github-actions"

RUN apt-get update && apt-get install -y \
    aspell aspell-en aspell-de aspell-es aspell-fr aspell-pl \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

# REF: https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#apt-get

COPY entrypoint.sh /entrypoint.sh
RUN chmod 555 /entrypoint.sh
COPY spellcheck.yaml /spellcheck.yaml
RUN chmod 555 /entrypoint.sh

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
