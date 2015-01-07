(ns word-count
  (:require [clojure.string :as str]))

(defn word-count [phrase]
  (let [word-vec (str/split
                   (str/replace phrase #"\W+" " ") #"\s+")]
    (frequencies (mapv #(str/lower-case %) word-vec))))
