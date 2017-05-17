all: qpar qseq gpar gseq
f: clean qpar qseq gpar gseq
qpar: 
	export OMP_NESTED=1
	gcc -fopenmp -o qpar qsort_par.c

qseq: 
	gcc -o qseq qsort_seq.c

gpar:
	gcc -fopenmp -o gpar gaussian_par.c

gseq:
	gcc -o gseq gaussian_seq.c
clean:
	rm qpar
	rm qseq
	rm gpar
	rm gseq