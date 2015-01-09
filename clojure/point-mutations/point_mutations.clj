(ns point-mutations)


;; This could probably be simplified a bit;
;; nested calls to map seems like a smell.

(defn hamming-distance
  "Calculate the Hamming distance between two DNA strands."
  [dna1 dna2]
  (cond (not= (count dna1) (count dna2))
        nil
        (zero? (count dna1))
        0
        :else
        (count
         (filter false?
                 (map #(= (first %1) (last %1))
                      (map #(into [] [%1 %2]) (seq dna1) (seq dna2)))))))
