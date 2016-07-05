class Triangle
  define_method(:initialize) do |a,b,c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:triangle?) do
    @a == @b && @b == @c
  end
end
