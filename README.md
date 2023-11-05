# FSE project :cow:
This is a repo for Foundations of Software Engineering project made by Team 13

<!-- ![](https://github.githubassets.com/images/icons/emoji/unicode/1f42e.png?v8) -->

## Project structure
We used to additional git repositories added as git submodules - lolcat and cowsay
Our project is heavily dependend on them.

This repo help you to calclulate credits. You just need to say cow folowing numbers to a cow and she will calculate the payment :
+ M - credit count
+ N - number of payments"
+ i - % in fractions of a unit"
+ m - number of paid payments"

And as well some interactions with the  cow. 

Good Luck & Have Fun 

![](https://github.githubassets.com/images/icons/emoji/unicode/1f404.png?v8)


## Installation

### build the image from dockerfile and run the container
```shell
docker build -t project:v1.2  -f Dockerfile .
docker run -it project:v1.2
```

### build manualy
first of all clone git repo with all submodules
```shell
git clone --recursive https://github.com/vladmd22/softtvary_13.git
```

run this commands:
```shell
bash prereqs.sh
bash build.sh
```

or simply...
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
run.sh
```

## Testing the program
To run tests:
```shell
test.sh
```

### Team members:
+ Alexandra Malygina
+ Artyom Myshlyaev
+ Eva Shipulina
+ Nataliya Pavlova
+ Vladislav Mityukov


**IMPORTANT NOTE:** supposed start from project directory within Docker container, otherwise add sudo command to scripts.
