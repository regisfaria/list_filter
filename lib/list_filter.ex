defmodule ListFilter do
  # Below I'm using an implementation using Enum, without recursion.
  def call(list), do: count_odds(list)

  defp count_odds(list) do
    filtered_numbers =
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    odds = Enum.count(filtered_numbers, fn num -> Kernel.rem(num, 2) > 0 end)

    odds
  end

  # Below we have an implementation without using Enum module, using recursion.
  # Note: I haven't liked much this implementation
  # def call(list), do: count_odds(list, 0)

  # defp count_odds([], acc), do: acc

  # defp count_odds([head | tail], acc) do
  #   case Integer.parse(head) do
  #     {num, _any} ->
  #       division_rest = Kernel.rem(num, 2)

  #       if division_rest > 0 do
  #         acc = acc + 1

  #         count_odds(tail, acc)
  #       else
  #         count_odds(tail, acc)
  #       end

  #     :error ->
  #       count_odds(tail, acc)
  #   end
  # end
end
