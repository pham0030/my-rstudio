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

RUN apt-get -y --no-install-recommends install libxt-dev

RUN install2.r --error --deps TRUE BAS
RUN install2.r --error --deps TRUE BayesFactor
RUN install2.r --error --deps TRUE knitr
RUN install2.r --error --deps TRUE rjags
RUN install2.r --error --deps TRUE coda
RUN install2.r --error --deps TRUE latex2exp
RUN install2.r --error --deps TRUE foreign
RUN install2.r --error --deps TRUE BHH2
RUN install2.r --error --deps TRUE scales
RUN install2.r --error --deps TRUE logspline
RUN install2.r --error --deps TRUE cowplot
RUN install2.r --error --deps TRUE ggthemes
RUN install2.r --error --deps TRUE openintro
RUN install2.r --error --deps TRUE infer
RUN install2.r --error --deps TRUE lmPerm
