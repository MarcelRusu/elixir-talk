defmodule PatternMatching do
  def sum(value) do
    receive do
      {:add, n} ->
        sum(value + n)
      {:subtract, n} ->
        sum(value - n)
    end
  end

  def square_if_ok({:ok, n}) do
    n * n
  end

  def square_if_ok({:error, msg}) do
    IO.puts(msg)
  end

#----

  def fib(n) when n == 0 or n == 1 do
    1
  end

  def fib(n) do
    fib(n - 1) + fib(n - 2)
  end
end