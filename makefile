all: par seq

par: 
	gcc -fopenmp -o par qsort_par.c

seq: 
	gcc -o seq qsort_seq.c

clean:
	rm par
	rm seq