defmodule GridGenie do

  @doc """
  Maps (prime number) list into multiplication table, as nested list
  """
  def mult_table(primes) do
    row1 = [1 | primes]
    Enum.map(row1, fn(x) -> 
     Enum.map(row1, fn(n) -> n * x end) end)
  end

  @doc """
  Outputs a list containing seperators and line breaks for printing a multiplication table to stdout from a (#mult_table) nested list
  """
  def draw_grid(table) do
    grid_table = 
      Enum.intersperse(table, "\n")
      |> List.flatten
      |> Enum.map(&to_string/1)
      |> Enum.intersperse(" | ")
    List.flatten([[" | "] | grid_table])
  end
  # TODO append trailing [" | "] in non ugly/expensive way
  #TODO add padding to columns
end
