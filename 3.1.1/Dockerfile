FROM python:3.10.0-bullseye

RUN curl -L https://github.com/oracle/oci-cli/releases/download/v3.1.1/oci-cli-3.1.1.zip -o /tmp/oci-cli-3.1.1.zip &&\
    unzip /tmp/oci-cli-3.1.1.zip oci-cli/oci_cli-3.1.1-py3-none-any.whl -d /tmp &&\
    pip install /tmp/oci-cli/oci_cli-3.1.1-py3-none-any.whl
EXPOSE 8181
ENTRYPOINT ["oci"]
