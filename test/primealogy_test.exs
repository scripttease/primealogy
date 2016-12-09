defmodule PrimealogyTest do
  use ExUnit.Case
  doctest Primealogy

  test "first_n_primes(0)" do
    assert Primealogy.first_n_primes(0) == []
  end

  test "first_n_primes(1)" do
    assert Primealogy.first_n_primes(1) == [2]
  end

  test "first_n_primes(3)" do
    assert Primealogy.first_n_primes(3) == [2, 3, 5]
  end

  test "first_n_primes(5)" do
    assert Primealogy.first_n_primes(5) == [2, 3, 5, 7, 11]
  end

  test "calculate_primes reverses the list of primes" do
    assert Primealogy.calculate_primes(0, 2, [11, 7, 5, 3, 2]) == [2, 3, 5, 7, 11]
  end

end
