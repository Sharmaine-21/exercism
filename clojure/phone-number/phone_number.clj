(ns phone-number)



(defn number [phone]
  (let [digits (clojure.string/replace phone #"\D" "")
        invalid "0000000000"]
    (cond (= (count digits) 10)
          digits
          (and (= (count digits) 11) (.startsWith digits "1"))
          (clojure.string/replace-first digits "1" "")
          :else
          invalid)))

(defn area-code [phone]
  (let [digits (number phone)]
    (if-not (= digits "0000000000")
      (subs digits 0 3))))

(defn pretty-print [phone]
  (let [digits (number phone)]
    (format "(%3s) %3s-%4s"
            (subs digits 0 3)
            (subs digits 3 6)
            (subs digits 6))))
