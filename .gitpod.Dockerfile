FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq firefox software-properties-common apt-transport-https wget language-pack-zh* language-pack-ja language-pack-ko && \
    sudo rm -rf /var/lib/apt/lists/*

RUN sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - && \
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && \
    sudo apt update && \
    sudo apt install code
    
    
