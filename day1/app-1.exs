lines = File.read!("input.txt") |> String.split("\n")

lines
|> Enum.map(fn l ->
  x = l |> String.to_integer() |> Integer.floor_div(3)
  x - 2
end)
|> Enum.sum
|> IO.inspect