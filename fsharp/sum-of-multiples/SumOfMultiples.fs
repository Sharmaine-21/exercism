module SumOfMultiples

(* Still working on this one... *)

let sumOfMultples x : int =
  [0..x]
  |> List.filter (fun x -> x % 3 = 0 || x % 5 = 0)
  |> List.sum
