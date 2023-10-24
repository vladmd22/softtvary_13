# FSE project
This is a repo for Foundations of Software Engineering project
made by Team 13



## Project structure
This repo help you to calc credits


## Installation

### build the image from dockerfile and run the container
```shell
docker build -t project:v1  -f Dockerfile .
docker run -it project:v1
```

### build manualy
```shell
make && bash prereqs.sh
```
or simply
```shell
bash install.sh
```
to uninstal everything use:
```shell
make clean
```
## Runing the program
To run the interactive program:
```shell
chmod +x run.sh && run.sh
```

## Testing the program
To install testing framework:
```

```

To test:
```shell
./test_run.sh
```


### Team members:
+ Alexandra Malygina
+ Artyom Myshlyaev
+ Eva Shipulina
+ Nataliya Pavlova
+ Vladislav Mityukov


IMPORTANT NOTE: supposed start from project directory within Docker container, otherwise add sudo command to scripts.
