FROM cytopia/golint:latest-release-0.1

LABEL maintainer="Gabriele Diener <g.diener@me.com>" \
    image="gdiener/golint-reviewdog" \
    repository="https://github.com/gadiener/golint-reviewdog" \
    vendor="jobtome" \
    description="Docker image with Go lint with Review Dog inside." \
    license="MIT"

ADD https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh install.sh

RUN chmod +x install.sh && \
    ./install.sh -b /usr/local/bin/ && \
    rm install.sh
