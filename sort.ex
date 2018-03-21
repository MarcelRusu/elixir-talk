defmodule Sort do
  def quick_sort([pivot | rest]) do
    left = quick_sort(for front <- rest, front < pivot, do: front)
    right = quick_sort(for back <- rest, back >= pivot, do: back)
    left ++ [pivot] ++ right
  end

  def quick_sort([]) do
    []
  end
end
