(ns bob)

(defn re-test [pattern phrase]
  (let [matches (re-matches pattern phrase)
        match (if (vector? matches)
                (first matches)
                matches)]
    (if (= match phrase)
      true
      false)))

(defn response-for [phrase]
  (let [question? #(re-test #"[A-Z0-9](?:[a-z\s]*)\?$" %)
        yelling?  #(re-test #"([\d\W]*?)(?:[A-Z\s]{2,})[^a-z]*" %)
        blank?    #(re-test #"^\s*$" %)]
    (cond (blank? phrase)
          "Fine. Be that way!"
          (yelling? phrase)
          "Whoa, chill out!"
          (question? phrase)
          "Sure."


          :else
          "Whatever.")))
