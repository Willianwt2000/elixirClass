# defmodule Hello do
#   def world do
#     # IO.puts("Hello, #{name}!")
#     :error
#   end
# end

#   Hello.world()


defmodule SumServer do
    use ExActor.GenServer
    defstart start
    defcall sum(a, b) do
    reply(a + b)
    end
end
