defmodule Primealogy do

  def first_n_primes(n) do
    calculate_primes(rosser_max(n), [2])
  end


  def calculate_primes(1, primes) do
    Enum.sort(primes)
  end


  def calculate_primes(n, primes) do
    if Enum.all?(primes, fn(x) -> rem(n, x) != 0 end) do
      calculate_primes(n - 1, [n | primes])
    else
      calculate_primes(n - 1, primes)
    end
  end


  def rosser_max(n) do
    if n >= 6 do
      17
    else
      round(n*(:math.log(n)) + n)
    end
  end

end
