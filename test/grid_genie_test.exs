defmodule GridGenieTest do
  use ExUnit.Case
  doctest GridGenie

  test "mult_table calculates a multiplication table for list of primes" do
    assert GridGenie.mult_table([2, 3, 5]) == [[1, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]]
  end

  test "draw grid returns printable output" do
    assert GridGenie.draw_grid([[1, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]]) == 123

  end
end
