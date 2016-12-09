# Primealogy

#### This elixir program calculates a list of *n* primes and then calculates a multiplication table from the list. It outputs the list to stdout in a rudimentary grid. 

### To Use:


```sh
# Navigate to the folder containing the program:
$ cd application-folder

# Run tests using:
$ mix test

# Start the Elixir REPL with the application compiled:
$ iex -S mix
```

```elixir
# Calculate and print your prime number multiplication table for all primes up to *n* using:
iex> Primealogy.prime_grid(n)
```

### Example output:
```elixir
iex(1)> Primealogy.prime_grid(2)
 | 1 | 2 | 3 | 
 | 2 | 4 | 6 | 
 | 3 | 6 | 9
:ok
```

### Follow Up
This is a relatively simple solution to the coding challenge, and I am pleased that I managed to get something readable printed to stdout, which took a while. To do are the following suggested improvements.

##### Aesthetic
* Add trailing gridline in an efficient way
* Remove the '1' from the top left of the multiplication table.
* Add padding to normalise column widths for larger numbers

##### Programmatic/computational
* Use a more performant algorithm or other faster method to calculate primes, such as Atkins
* Integration test for output (add Travis)
* Accept input in prompt after iex -S mix, i.e. fetch 'n' using `IO.gets`
