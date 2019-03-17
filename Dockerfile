FROM ruby:2.3.0

COPY ./input.csv /
COPY ./simple_csv.rb /
COPY ./test /

ENTRYPOINT ["/bin/bash"]
