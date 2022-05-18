from Bio import pairwise2
from Bio import SeqIO
from Bio.Align import substitution_matrices
from Bio import Align


matrix=substitution_matrices.load("BLOSUM62")
seq1 = SeqIO.read("col2a1_83.fa", "fasta")
seq2 = SeqIO.read("col2a1_84.fa", "fasta")
seq3 = SeqIO.read("col2a1_85.fa", "fasta")
seq1 = seq1.seq
seq2 = seq2.seq
seq3 = seq3.seq


match = 2
mismatch = -1
gap_open = -10
gap_extend = -0.5

aligner = Align.PairwiseAligner()
aligner.open_gap_score = gap_open
aligner.extend_gap_score = gap_extend
aligner.mode= 'local'
for alignment in aligner.align(seq1, seq2):
    print("Score = %.1f:" % alignment.score)

for alignment in aligner.align(seq1, seq3):
    print("Score = %.1f:" % alignment.score)