(ns grade-school)

(defn grade [db grade]
  (or (get db grade) []))

(defn add
  "Adds a student to a vector of students in the given grade;
   grade number is the key."
  [db student gr]
  (assoc db gr (-> (grade db gr)
                 set
                 (conj student)
                 vec)))



(defn sorted [gs]
  (into (sorted-map) gs))
