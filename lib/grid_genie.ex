defmodule GridGenie do

  def mult_table(primes) do
    row1 = [1 | primes]
    Enum.map(row1, fn(x) -> 
     Enum.map(row1, fn(n) -> n * x end) end)
  end

  def draw_grid(table) do
    grid_table = 
      Enum.intersperse(table, "\n")
      |> List.flatten
      |> Enum.map(&to_string/1)
      |> Enum.intersperse(" | ")
    List.flatten([[" | "] | grid_table])
    grid_table2 = [[" | "] | grid_table]
    IO.puts(List.to_string(grid_table2))
    # |> IO.puts(&to_string/1)
  end
end
