(ns anagram)

(defn- seq-word [word]
  (sort (clojure.string/lower-case word)))

(defn- same-word? [word candidate]
  (= (clojure.string/lower-case word)
     (clojure.string/lower-case candidate)))

(defn anagrams-for [word candidates]
  (into [] (filter (fn [c] (and (not (same-word? word c))
                               (= (seq-word word) (seq-word c)))) candidates)))
