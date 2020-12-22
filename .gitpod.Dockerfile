FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq firefox chromium-browser language-pack-zh* language-pack-ja language-pack-ko && \
    sudo rm -rf /var/lib/apt/lists/*
