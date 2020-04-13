FROM cytopia/golint

LABEL maintainer="Gabriele Diener <g.diener@me.com>" \
    image="gdiener/golint-reviewdog" \
    repository="https://github.com/gadiener/golint-reviewdog" \
    vendor="jobtome" \
    description="Docker image with Airflow and Kubernetes plugin." \
    license="MIT"

ADD https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh install.sh

RUN chmod +x install.sh && \
    ./install.sh -b /usr/local/bin/ && \
    rm install.sh
