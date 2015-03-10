(ns robot-name)

(declare robot robot-name reset-name)

(def used-names (atom []))

(defn gen-name []
  (let [alpha (take 2
                    (repeatedly
                     #(rand-nth "ABCDEFGHIJKLMNOPQRSTUVWXYZ")))
        num   (take 3
                    (repeatedly #(rand-nth "1234567890")))]
    (apply str (concat alpha num))))

(defn used? [name]
  (some #(= name %) @used-names))

(defn get-unique-name []
  (let [name (take 1
                   (take-while #(not (used? %))
                               (repeatedly gen-name)))]
    (swap! used-names conj name)
    name))

(defn robot []
  (let [name (get-unique-name)]
    (atom {:name name})))

(defn robot-name [robot]
  (first (:name @robot)))

(defn reset-name [robot]
  (swap! robot assoc :name (get-unique-name)))
