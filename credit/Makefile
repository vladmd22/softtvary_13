# Makefile for Count
COMPILER=g++
FLAGS=-fopenmp

credit: credit_function.cpp
	$(COMPILER) credit_function.cpp main.cpp $(FLAGS) -o $(PWD)/bin/credit
	$(COMPILER) credit_function.cpp tests.cpp $(FLAGS) -o $(PWD)/bin/tests

clean:
	rm $(PWD)/bin/credit
	rm $(PWD)/bin/tests
