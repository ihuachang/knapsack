CC = gcc
CXX = g++
CFLAGS = -O3
CXXFLAGS = $(CFLAGS) -std=c++14

TARGETS = knapsack_vs

.PHONY: all
all: $(TARGETS)

vs.png: plot.dat
	gnuplot plot.gplt

.PHONY: clean
clean:
	-rm -f $(TARGETS) $(TARGETS:=.o)
	-rm *.dat
	-rm *.out

# Note: This is in POSIX standard. The syntax and executable file (without extension) may not be recognized by Microsoft Windows. You may need the Powershell stuff.

# example usage:
# 1. compile and yield an executable file
# 		$ make
# 2. execute the executable file and input testcases via stdin with "<" symbol
# 		$ ./hw4_bnb < open_20
# 3. clean files
# 		$ make clean