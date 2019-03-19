## Charlie Hotel
This project is my answer to a take-home exercise given out by a company I am interviewing with. The final package is a Docker image than can be run in order to view and test my solution.

### Features
This repo can be used to build a Docker container that can be run locally on your machine to test my solution to the take-home exercise. The container conveniently packages all dependencies that you'll need in order to test the solution, as well as the solution itself. The solution contains a `test` binary that can be run against any CSV file.

### How to use
First clone the repo to your machine, then on the command line change to the repo root directory.

Build the container:
```sh
$ make dockerimage
```
The result will be a docker image called `trevordbabcock/csv_sorter`.

Run the docker image:
```sh
$ docker run -ti trevordbabcock/csv_sorter
```
You should see the following (the hash will be different):
```sh
root@c13e03d417a8:/#
```
You are now shelled into the container. To test the solution:
```sh
$ cd /charliehotel
$ ./test -f input/normal.csv
> Writing sorted CSV to output.csv
```
You can check the result of the test:
```sh
$ cat output.csv
> Stockholm,Oslo,Copenhagen,Apple,"123,456","""a""",""""
```
You can use any of the csv files in the `input` directory to test the solution, or you can provide your own.

When you are done, simply type:
```sh
$ exit
```
### License
MIT License
