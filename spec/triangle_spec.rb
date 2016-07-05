require 'rspec'
require 'triangle'

describe Triangle do
  describe('#triangle') do
    it('returns "not a triangle" if it is not a triangle') do
      test_triangle = Triangle.new('1', '2', '7')
      expect(test_triangle.triangle()).to(eq("not a triangle"))
    end
    it('returns "equilateral" when all three side values are equal') do
      test_triangle = Triangle.new('3', '3', '3')
      expect(test_triangle.triangle()).to(eq("equilateral"))
    end
    it('returns "isosceles" when 2 side values are equal') do
      test_triangle = Triangle.new('8', '8', '15')
      expect(test_triangle.triangle()).to(eq("isosceles"))
    end
    it('returns "scalene" when no side values are equal') do
      test_triangle = Triangle.new('3', '4', '5')
      expect(test_triangle.triangle()).to(eq("scalene"))
    end

  end
end
