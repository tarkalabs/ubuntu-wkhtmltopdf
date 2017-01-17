FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y xvfb fonts-freefont-ttf fontconfig dbus openssl psmisc ca-certificates wkhtmltopdf \
    && mv /usr/bin/wkhtmltopdf /usr/bin/wkhtmltopdf-origin \
    && echo '#!/usr/bin/env sh\n\
Xvfb :0 -screen 0 1024x768x24 -ac +extension GLX +render -noreset & \n\
DISPLAY=:0.0 wkhtmltopdf-origin $@ \n\
killall Xvfb\
' > /usr/bin/wkhtmltopdf && \
    chmod +x /usr/bin/wkhtmltopdf
