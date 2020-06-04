Generates permutations and returns an array, or prints to csv, or prints to console. See https://github.com/andydwyer/brutalitops for usage.

# Usage

## Initialization

```
Brutalitops.new( min_length_of_the_permutation, max_length_of_the_permutation, [optional_symbols_and_or_custom_array] )

Example:
b = Brutalitops.new(1,3,[:alpha_lowercase, :alpha_uppercase, :nums, :special_chars, ["ä", "ö", "ü"]])

:alpha_lowercase = ('a'..'z').to_a
:alpha_uppercase = ('A'..'Z').to_a
:nums = (0..9).to_a
:special_chars = [' ', '!', '@', '#', '$', '%','^', '&', '*', '(', ')', '-', '_', '+', '=', '[', ']', '{', '}', '|', '\\', '?', "/", '<', '>', '.', ',', '~', '`']
["ä", "ö", "ü"] = any array of elements

All arrays passed in as the 3rd argument are concatentated.

Note: Generating permutations when max_length_of_the_permutation > 3 might take a long time (i.e. hours) depending on your processing power.
```

## Methods

```
b.print_permutations_to_console

-Prints the resulting permutations to console.
-Accepts an optional boolean argument to turn off status-related console messages, e.g. b.print_permutations_to_console(false)
```

```
b.print_permutations_to_csv

-Prints the resulting permutations to a CSV named brutalitops_<time stamp>.csv
-Accepts an optional boolean argument to turn off status-related console messages, e.g. b.print_permutations_to_csv(false)
```

```
a = b.to_array

-Returns the resulting permutations to an array
```
