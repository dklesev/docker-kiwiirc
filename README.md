docker-kiwiirc
==============

Dockerfile to build and run kiwiirc

KiwiIRC : One of the most feature complete web based IRC clients available

Please check https://kiwiirc.com/docs/installing/proxies for info on proxying kiwiirc

    curl -s https://raw.github.com/Thermionix/docker-kiwiirc/master/Dockerfile | sudo docker build -t="kiwiirc" -
    sudo docker run -p 7778:7778 -d kiwiirc
