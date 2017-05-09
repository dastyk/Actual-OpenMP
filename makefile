all: par seq

par: 
	export OMP_THREAD_LIMIT=8
	export OMP_NESTED=1
	gcc -openmp -o par qsort_par.c

seq: 
	gcc -o seq qsort_seq.c

clean:
	rm par
	rm seq