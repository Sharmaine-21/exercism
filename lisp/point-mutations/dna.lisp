(defpackage #:dna
  (:use #:cl)
  (:export #:seq-strand
           #:compare-strands
           #:hamming-distance))
(in-package #:dna)

(defun seq-strand (strand)
  (loop for char across strand
       collect char))

(defun compare-strands (dna1 dna2)
  (let ((v1 (seq-strand dna1))
        (v2 (seq-strand dna2))
        (acc 0))
    (loop for i from 0 to (- (length v1) 1) do
         (unless (eq (nth i v1) (nth i v2)) (setq acc (+ acc 1))))
    acc))

(defun hamming-distance (dna1 dna2)
  "Determine number of mutations between DNA strands by computing the Hamming Distance."
  (cond ((not (eq (length dna1) (length dna2))) nil)
        ((and (eq (+ (length dna1) (length dna2)) 0)) 0)
        (t (compare-strands dna1 dna2)) ))
