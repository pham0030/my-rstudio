FROM rocker/rstudio:4.2.0

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadbclient-dev \
  libpq-dev \
  libssh2-1-dev \
  unixodbc-dev \
  libsasl2-dev \
  && install2.r --error \
    --deps TRUE \
    tidyverse \
    statsr \
    PairedData \
    dplyr \
    ggplot2

RUN install2.r --error --deps TRUE markdown
RUN install2.r --error --deps TRUE devtools
