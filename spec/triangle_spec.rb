require 'rspec'
require 'triangle'

describe Triangle do
  describe("#triangle?") do
    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new('1', '1', '4')
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end
  describe('#triangle_type') do
    it('returns equilateral when all three side values are equal') do
      test_triangle = Triangle.new('3', '3', '3')
      expect(test_triangle.triangle_type()).to(eq("equilateral"))
    end
    it('returns isosceles when only 2 side values are equal') do
      test_triangle = Triangle.new('8', '8', '15')
      expect(test_triangle.triangle_type()).to(eq("isosceles"))
    end
    it('returns scalene when only no side values are equal') do
      test_triangle = Triangle.new('1', '8', '15')
      expect(test_triangle.triangle_type()).to(eq("scalene"))
    end

  end
end
