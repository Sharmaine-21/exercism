(ns phone-number)

(def invalid "0000000000")

(defn number [phone]
  (let [digits (clojure.string/replace phone #"\D" "")]
    (cond (= (count digits) 10)
          digits
          (and (= (count digits) 11) (.startsWith digits "1"))
          (clojure.string/replace-first digits "1" "")
          :else
          invalid)))

(defn area-code [phone]
  (let [digits (number phone)]
    (if-not (= digits invalid)
      (subs digits 0 3))))

(defn pretty-print [phone]
  (let [digits (number phone)
        area (area-code phone)
        exchange (subs digits 3 6)
        local (subs digits 6)]
    (format "(%3s) %3s-%4s"
            area
            exchange
            local)))
