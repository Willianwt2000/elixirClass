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

# defmodule CuentaAtras do
#   # Caso base: cuando llega a 0, paramos
#   def ejecutar(0), do: IO.puts("¡Despegue!")

#   # Caso recursivo: imprimimos y nos llamamos a nosotros mismos con n-1
#   def ejecutar(n) do
#     IO.puts(n)
#     ejecutar(n - 1)
#   end
# end

# CuentaAtras.ejecutar(5)

# defmodule Sumadora do
#   # Caso base: la suma de una lista vacía es 0
#   def sumar([]), do: 0

#   # Caso recursivo: cabeza + suma del resto (cola)
#   def sumar([cabeza | cola]) do
#     cabeza + sumar(cola)
#   end
# end

# Cómo probarlo:
# Sumadora.sumar([1, 2, 3, 4])  |> IO.puts()

# defmodule Filtrador do
#   def solo_pares([]), do: []

#   # Patrón 1: Si la cabeza es par (rem(cabeza, 2) == 0)
#   def solo_pares([cabeza | cola]) when rem(cabeza, 2) == 0 do
#     [cabeza | solo_pares(cola)]
#   end

#   # Patrón 2: Si no es par, cae aquí (el _ ignora el valor)
#   def solo_pares([_impar | cola]) do
#     solo_pares(cola)
#   end
# end

# two sum

# defmodule Solution do
#   def two_sum(nums, target) do

#   end
# end

# IO.inspect Solution.two_sum([2, 7, 11, 15], 9)
# IO.inspect Solution.two_sum([3, 2, 4], 6)
# IO.inspect Solution.two_sum([3, 3], 6)

# practice case

# list = [1,2,3]

# defmodule Caseptc do
#   def max(a, b) do
#     cond do
#       a >= b -> a
#       true -> b
#     end
#   end
# end

# Caseptc.max(7,8) |> IO.puts()

# defmodule Solution do
#   def triangle_type(nums) do
#     [a, b, c] = nums

#     cond do
#       a == b and b == c -> "equilateral"
#       a + b != c and a != c + b -> "none"
#       a == b or (a == c and b != c) -> "isosceles"
#       a != b and b != c -> "scalene"
#     end
#   end
# end

# nums = [3, 3, 3]
# Solution.triangle_type(nums) |> IO.puts()

# nums2 = [2, 4, 5]
# Solution.triangle_type(nums2) |> IO.puts()

# def extract_user(user) do
#   case extract_login(user) do
#     {:error, reason} ->
#       {:error, reason}

#     {:ok, login} ->
#       case extract_email(user) do
#         {:error, reason} ->
#           {:error, reason}

#         {:ok, email} ->
#           case extract_password(user) do
#             {:error, reason} ->
#               {:error, reason}

#             {:ok, password} ->
#               %{login: login, email: email, password: password}
#           end
#       end
#   end
# end

# defmodule Practica do
#   def leer_persona(datos) do
#     with {:ok, nombre} <- Map.fetch(datos, :nombre),
#          {:ok, edad} <- Map.fetch(datos, :edad) do
#           Map.get(datos, :apodo, "Sin apodo")
#       "Hola, #{nombre}. Tienes #{edad} años."
#     end
#   end
# end

# datos = %{nombre: "willian", edad: 26}
# Practica.leer_persona(datos) |> IO.puts()

defmodule Practica do
  def extract_user(user) do
    with {:ok, login} <- extract_login(user),
         {:ok, email} <- extract_email(user),
         {:ok, password} <- extract_password(user) do
      %{login: login, email: email, password: password}
    end
  end

  defp extract_login(user), do: Map.fetch(user, :login)
  defp extract_email(user), do: Map.fetch(user, :email)
  defp extract_password(user), do: Map.fetch(user, :password)
end

user = %{login: "willian", email: "willian@example.com", password: String.duplicate("x", 8)}
Practica.extract_user(user) |> IO.inspect()
