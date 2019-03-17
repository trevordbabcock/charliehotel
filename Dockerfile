FROM ruby:2.3.0

RUN mkdir -p /charliehotel/lib
COPY ./lib/simple_csv.rb /charliehotel/lib/
RUN mkdir /charliehotel/input
COPY ./input/ /charliehotel/input/
COPY ./test /charliehotel/

ENTRYPOINT ["/bin/bash"]
