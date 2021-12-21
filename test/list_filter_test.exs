defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "should return the quantity of the odd numbers from a list of strings" do
      list = ["1", "2", "45", "not_a_number", "odd_number", "123"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
