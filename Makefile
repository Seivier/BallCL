NAME=BallCL

all: run

init:
	@cmake -S . -B build

build:
	@cmake --build build -j 10
.PHONY: build

run: build
	./build/src/$(NAME)
