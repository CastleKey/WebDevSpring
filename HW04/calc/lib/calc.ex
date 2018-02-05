defmodule Calc do

  # The main eval function
  def eval() do
    given = IO.gets "> "                    # Prints the prompt for the input
    y = given |> String.replace("\n", "")   # Replace the new line operator
    k = y |> Code.eval_string               # evaluates the string
    Kernel.elem(k, 0) |> IO.puts            # outputs the result
    eval()                                  # repeats the function
  end

  # main function
  def main do
    eval()                                  # Send the evaluation
  end

end
