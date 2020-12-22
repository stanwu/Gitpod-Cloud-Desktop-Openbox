FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq firefox snapd chromium-browser language-pack-zh* language-pack-ja language-pack-ko && \
    sudo snap install chromium && \
    sudo rm -rf /var/lib/apt/lists/*
