(ns nucleotide-count)



(defn nucleotide-counts [strand]
  (merge {\A 0, \T 0, \C 0, \G 0}
   (frequencies (seq strand))))

(defn count [nucleotide, strand]
  (if-not (some #{nucleotide} '(\G \A \C \T))
    (throw (Exception. "invalid nucleotide"))
    (get (nucleotide-counts strand) nucleotide)))
