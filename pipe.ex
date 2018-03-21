defmodule Pipe do
  def add3(x) do
    x + 3
  end

  def square(x) do
    x * x
  end

  def add3_and_square(n) do
    n
    |> add3
    |> square
  end

  def is_not_vowel(char) do
    String.downcase(char) not in ["a", "e", "i", "o", "u"]
  end

  def remove_vowels(str) do
    str
    |> String.split("")
    |> Enum.filter(is_not_vowel)
    |> Enum.join("")
    |> String.trim
  end

  def square_and_sum(list) do
    list
    |> Enum.map(fn x -> x * x end)
    |> Enum.reduce(0, fn (sum, cur) -> sum + cur end)
  end
end