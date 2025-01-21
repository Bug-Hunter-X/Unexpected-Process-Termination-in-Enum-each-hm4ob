```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:stop)
    end
    IO.puts(x)
  end)
catch
  :stop -> IO.puts("Iteration stopped")
end
```