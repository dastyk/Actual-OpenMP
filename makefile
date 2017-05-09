all: par seq
f: clean par seq
par: 
	export OMP_NESTED=1
	gcc -fopenmp -o par qsort_par.c

seq: 
	gcc -o seq qsort_seq.c

clean:
	rm par
	rm seq