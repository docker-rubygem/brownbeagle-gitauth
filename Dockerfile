FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4.5

RUN gem install brownbeagle-gitauth --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["gitauth"]
CMD ["--help"]
