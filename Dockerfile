FROM jupyter/base-notebook

USER root

# Install linux dependencies
RUN apt-get update && \
    apt-get install -y build-essential python3 && \
    apt-get clean && update-ca-certificates -f

RUN pip install -U pip setuptools wheel

RUN pip install sha256
RUN pip install secp256k1
RUN pip install pymerkle
RUN pip install py-multihash
RUN pip install hdwallet
#RUN pip install bitcoinlib
RUN pip install py-multibase
RUN pip install peerdid
RUN pip install -U didkit
RUN pip install py-multibase

COPY . /did-merkle

USER jovyan
