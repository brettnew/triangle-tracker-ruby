class Triangle
  define_method(:initialize) do |a,b,c|
    @a = a.to_i
    @b = b.to_i
    @c = c.to_i
  end

  define_method(:triangle) do
    if !(@a.+(@b).<=(@c) || @c.+(@b).<=(@a) || @a.+(@c).<=(@b))
      if (@a == @b && @b == @c)
        @triangle_name = "equilateral"
      elsif (@a == @b) || (@b == @c) || (@c == @a)
        @triangle_name = "isosceles"
      else
        @triangle_name = "scalene"
      end
    else
      @triangle_name = "not a triangle"
    end
  end
  @triangle_name
end
