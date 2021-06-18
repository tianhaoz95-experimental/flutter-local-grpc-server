FROM matspfeiffer/flutter:latest

USER root

RUN apt update -y && \
    apt install -y protobuf-compiler

RUN dart pub global activate protoc_plugin

USER developer

RUN echo "export PATH=\"\$PATH:\$HOME/.pub-cache/bin\"" >> ~/.bashrc
