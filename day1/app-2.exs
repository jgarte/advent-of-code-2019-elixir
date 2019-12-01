lines = File.read!("input.txt") |> String.split("\n")

defmodule Fuel do
  def fuelForMass(0), do: 0
  def fuelForMass(mass) when mass < 0, do: 0
  def fuelForMass(mass) do
    fuel = (mass |> String.to_integer() |> Integer.floor_div(3)) - 2
    if fuel <= 0 do
      0
    else
      fuel + fuelForMass(Integer.to_string(fuel))
    end
  end
end


lines
|> Enum.map(fn mass -> Fuel.fuelForMass(mass) end)
|> Enum.sum
|> IO.inspect