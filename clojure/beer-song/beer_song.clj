(ns beer-song)

;; Worst implementation ever.


(def but-last-verse
  (str "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"))


(def last-verse
  (str "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"))

(defn- reg-verse [v]
  (str v " bottles of beer on the wall, " v " bottles of beer.\nTake one down and pass it around, " (- v 1) " bottle" (if (= v 2) "" "s") " of beer on the wall.\n"))

(defn verse [v]
  (cond
    (> v 1) (reg-verse v)
    (= v 1) but-last-verse
    (= v 0) last-verse))

(defn sing
  ([fv]
   (sing fv 0))
  ([fv lv]
   (let [verses (reverse (range lv (+ 1 fv)))]
     (clojure.string/join "\n" (for [v verses]
        (verse v))))))
