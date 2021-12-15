defmodule MyModule do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]
  #import Integer
  alias MathModule.Math, as: MyMath

  def hello_world do
    ##import_file(math.exs)
    inspect(MyMath.sum(10,10))
  end

  def show_number_div(number) do
    require Integer
    puts("Div number #{number} == #{Integer.is_even(number)}")
  end

  def inspect(x) do
    puts("Started inspect")
    puts(x)
    puts("Finish inspect")
  end
end