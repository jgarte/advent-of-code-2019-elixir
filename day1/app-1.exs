"input.txt"
|> File.read!()
|> String.split("\n")
|> Enum.map(fn line ->
  (line |> String.to_integer() |> Integer.floor_div(3)) - 2
end)
|> Enum.sum()
|> IO.inspect()

# Answer is: 3490763
