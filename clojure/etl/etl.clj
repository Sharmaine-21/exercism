(ns etl
  (:require [clojure.string :as str]))


(defn transform [data]
  (let [new {}]
    (apply merge
          (flatten
           (map (fn [k v]
                  (map #(assoc new (str/lower-case %) k) v))
                (keys data) (vals data))))))
