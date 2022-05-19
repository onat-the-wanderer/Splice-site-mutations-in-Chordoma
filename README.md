# Chordoma Splice Site Mutations

Discovery of significant mutations around splice sites in differentially expressed genes in Chordoma transcriptome data using machine learning tools.

## PIPELINE

Commands from serveral tools which were used in this project can be seen below.

### SRA toolkit

```
prefetch <"SAMPLE GEO CODE">

fasterq-dump --split-files <"SAMPLE GEO CODE">
```

### HISAT2

```
hisat2 -q -x <ref.fa> -1 <fastq_1> -2 <fastq_2> -S <file.sam>
```

### Samtools

```
samtools view -b -o <file.bam> <file.sam>

samtools sort -o <file.sorted.bam> <file.bam>

samtools index <file.sorted.bam >

samtools view -h <sample.sorted.bam> <gene coordinates> -o <gene-name_sample-name.bam>

samtools faidx <ref.fa>

```
### Bcftools

```
bcftools call -O b -vc <file.raw.bcf> > <file.var.bcf>

bcftools view <file.var.bcf> | vcfutils.pl varFilter - > <file.var-final.vcf>

bcftools consensus --fasta-ref <ref.fa> <file.vcf.gz> -o file.fasta

```
### FeatureCounts

```
featureCounts -T 8 -a <file.gtf> "transcrip_id" -o readCounts.txt <file.bam>

```

### StringTie

```
stringtie -p 8 -G <file.gtf> -e -B -o <file.gtf> -A abundances.tsv <file.bam>

```

### Bedtools

```
bedtools coverage -a <file.bed> -b <file.bam> -bed -d > file.txt

bedtools getfasta -fi <file.fasta> -bed <file.bed> -fo file.fasta

```


## DATA

Data can be downloaded via https://drive.google.com/drive/folders/19bvqcYv53lFGFoX2HsNporkIXiE5nYmo?usp=sharing. Also, raw data is accessible here, https://www.ncbi.nlm.nih.gov/Traces/study/?acc=SRP109781&o=bases_l%3Ad%3Bacc_s%3Aa. For the reference genome, http://ftp.ensembl.org/pub/release-106/fasta/homo_sapiens/dna_index/
