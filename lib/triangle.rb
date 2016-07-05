class Triangle
  define_method(:initialize) do |a,b,c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:triangle?) do
    @a.+(@b).<=(@c) && @c.+(@b).<=(@a) && @a.+(@c).<=(@b)
    false
  end

  define_method(:triangle_type) do
    if @a == @b && @b == @c
      @triangle_name = "equilateral"
    elsif
      (@a == @b && @a != @c) || (@b == @c && @b != @a) || (@c == @a && @c != @b)
      @triangle_name = "isosceles"
    else
      @triangle_name = "scalene"
    end
  end
    @triangle_name
end
