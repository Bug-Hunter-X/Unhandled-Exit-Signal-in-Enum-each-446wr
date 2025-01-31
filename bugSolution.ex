```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:exit_condition_met)
    end
    IO.puts(x)
  end)
rescue
  :exit_condition_met -> IO.puts("Exit condition met. Exiting gracefully.")
  e -> IO.puts("An error occurred: " <> to_string(e))
end
```