defmodule Primealogy do

  @doc """
  Computes list of first n prime numbers counting down from argument n.
  """
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

  @doc """
  Prints multiplication table grid for first n primes to stdout.
  """
  def prime_grid(n) do
    cond do
      n <= 0 -> IO.puts("Not so negative please. Got anything a little bigger?")
      is_integer(n) == true -> result = 
        first_n_primes(n)
        |> GridGenie.mult_table
        |> GridGenie.draw_grid
      IO.puts(List.to_string(result))
      true -> IO.puts("Sorry, I need an integer")
    end
  end
end
