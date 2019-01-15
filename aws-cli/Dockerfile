FROM python:3-stretch

ENV HOME /home

ENV PATH "$PATH:/home/.local/bin" 

RUN pip install awscli --upgrade --user && \
    pip install --user aws-sam-cli

RUN chmod -R a+rx /home/.local

VOLUME ["/home/.aws", "/usr/app"]

WORKDIR /usr/app

CMD ["aws"]
ENTRYPOINT [ "aws" ]