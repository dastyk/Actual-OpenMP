all: par seq

par: 
	gcc -openmp export OMP_THREAD_LIMIT=8 -o par qsort_par.c

seq: 
	gcc -o seq qsort_seq.c

clean:
	rm par
	rm seq