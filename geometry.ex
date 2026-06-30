defmodule Geometry do
  def rectangle_area(a, b) do
    a * b
  end
end


result = Geometry.rectangle_area(3, 2)
IO.puts("El área es: #{result}")



# If a function resides in the same module, you can omit the module prefix:
defmodule Geometry do
  def rectangle_area(a, b) do
    a * b
  end
  def square_area(a) do
    rectangle_area(a, a)
  end
end





defmodule Rectangle do
  def area(a), do: area(a, a)
  def area(a, b), do: a * b
end



# example Listing 2.3   Same-name functions, different arities, default params (arity_calc.ex)
defmodule Calculator do
  def sum(a) do
    sum(a,0)
  end

  def sum(a,0) do
    a + b
  end
end




# Crea un módulo Calculadora con estas funciones:
# 1. sumar/2 → recibe 2 números y los suma
# 2. restar/2 → recibe 2 números y los resta
# 3. multiplicar/2 → recibe 2 números y los multiplica
# 4. dividir/2 → recibe 2 números y los divide
# 5. sumar/1 → recibe 1 número y lo suma con 0 (usa default)



defmodule Calculadora do

  def sumar(a , b \\ 0) do
    a + b
  end

  def resta(a , b) do
    a - b
  end

  def multiplicar(a , b) do
    a * b
  end

  def dividir(a , b) do
    div(a,b)
  end
end

IO.puts("Suma /2 se espera el resultado 11")
Calculadora.sumar(5, 6) #11
|> IO.puts()

IO.puts("Suma /1 defaul 0  se espera el resultado 5")
Calculadora.sumar(5) # 5
|> IO.puts()

IO.puts("Resta /2 se espera el resultado 2")
Calculadora.resta(10 , 8) # 2
|> IO.puts()

IO.puts("Multiplicacion se espera el resultado 25")
Calculadora.multiplicar(5 , 5) # 25
|> IO.puts()

IO.puts("Division se espera el resultado 1")

Calculadora.dividir(5 , 5) # 1
|> IO.puts()





# Agrega estas funciones a Calculadora:
# 1. promedio/1 → recibe una lista de números y devuelve el promedio
# 2. maximo/1 → recibe una lista y devuelve el máximo
# 3. minimo/1 → recibe una lista y devuelve el mínimo

defmodule Calculadora do
  def promedio(lista) do
    Enum.sum(lista) / length(lista)
  end

  def maximo(lista) do
    Enum.reduce(lista, 0, fn numero, mayor ->
      if numero > mayor do
        numero
      else
        mayor
      end
    end)
  end

  def minimo(lista) do
    Enum.reduce(lista, fn numero, minimo ->
      if numero < minimo do
        numero
      else
        minimo
      end
    end)
  end
end


# Prueba:
lista = [10, 20, 30, 40, 50]
Calculadora.promedio(lista) |> IO.puts()  # 30
Calculadora.maximo(lista) |> IO.puts()    # 50
Calculadora.minimo(lista) |> IO.puts()    # 10
