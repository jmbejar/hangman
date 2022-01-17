defmodule Procs do
  def hello() do
    receive do
      msg ->
        IO.puts("Hello #{inspect msg}")
    end
    hello()
  end
end