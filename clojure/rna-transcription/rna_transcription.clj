(ns rna-transcription)

(def rna-map
  {\G \C \C \G \T \A \A \U})

(defn rna-transcribe [dna]
  (apply str (doall (map #(get rna-map %) (seq dna)))))

(defn to-rna [dna]
  (assert (= nil (re-find #"[^ACGT]" dna)))
  (rna-transcribe dna))
