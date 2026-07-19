# defmodule Hello do
#   def world do
#     IO.puts("Hello Elixir")
#   end
# end

# # Hello.world()




# # defmodule Circle do
# #   @pi 3.14159

# #   def area(r), do: r * r * @pi
# #   def circumference(r), do: 2 * r * @pi
# # end

# # Circle.area(1) |> IO.puts()
# # Circle.circumference(1) |> IO.puts()



# defmodule Circle do
#   @moduledoc "Implements basic circle functions"

#   @pi 3.14159

#   @doc "Computes the area of a circle"
#   def area(r), do: r * r * @pi

#   @doc "Computes the circumference of a circle"
#   def circumference(r), do: 2 * r * @pi
# end


# defmodule User do
#   @spec tonto_mayor_de_edad?(String.t(), integer()) :: boolean()
#   def tonto_mayor_de_edad?(_name, age) do
#     age >= 18
#   end
# end

# defmodule Greeter do
#   @spec hello(String.t()) :: String.t()
#   def hello(name) do
#     "Hola, #{name}!"
#   end
# end

# defmodule Logger do
#   @spec log(atom(), any()) :: :ok
#   def log(level, message) do
#     IO.inspect(message, label: level)
#     :ok
#   end
# end

defmodule CuentaAtras do
  # Caso base: cuando llega a 0, paramos
  def ejecutar(0), do: IO.puts("¡Despegue!")

  # Caso recursivo: imprimimos y nos llamamos a nosotros mismos con n-1
  def ejecutar(n) do
    IO.puts(n)
    ejecutar(n - 1)
  end
end

# CuentaAtras.ejecutar(5)


defmodule Sumadora do
  # Caso base: la suma de una lista vacía es 0
  def sumar([]), do: 0

  # Caso recursivo: cabeza + suma del resto (cola)
  def sumar([cabeza | cola]) do
    cabeza + sumar(cola)
  end
end

# Cómo probarlo:
Sumadora.sumar([1, 2, 3, 4])  |> IO.puts()
