defmodule Primealogy do

  def first_n_primes(0) do
    []
  end

  def first_n_primes(count) do
    calculate_primes(count - 1, 3, [2])
  end

  def calculate_primes(0, _, primes) do
    Enum.reverse(primes)
  end

  def calculate_primes(count, candidate, primes) do
    if Enum.all?(primes, fn(x) -> rem(candidate, x) != 0 end) do
      calculate_primes(count - 1, candidate + 1, [candidate | primes])
    else
      calculate_primes(count, candidate + 1, primes)
    end
  end

  def prime_grid(n) do
    result = 
      first_n_primes(n)
      |> GridGenie.mult_table
      |> GridGenie.draw_grid
    IO.puts(List.to_string(result))
  end
end
