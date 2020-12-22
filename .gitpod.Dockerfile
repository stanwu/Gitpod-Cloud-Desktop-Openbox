FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq firefox language-pack-zh* language-pack-ja language-pack-ko japan* chinese* korean* && \
    sudo rm -rf /var/lib/apt/lists/*
