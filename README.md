# ubuntu-vlc-server
This repository contains a dockerfile that installs vlc-server

## Considerations

Os arquivos de configuração e scripts para o servidor vlc server estão no diretório ~/Documentos

* videos.vlm contém o setup dos videos que serão distribuidos

* ativa_vlm.sh é o script que ativa o servidores e chama load_videos.sh

* load_videos.sh configura o servidor e carrega os vídeos designados no arquivo vlm. Faz uma chamada via telnet para localhost para a interface de configuração do servidor.
