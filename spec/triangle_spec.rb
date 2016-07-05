require 'rspec'
require 'triangle'

describe Triangle do
  describe('#triangle?') do
    # it('returns the first side') do
    #   test_triangle = Triangle.new('3', '4', '5')
    #   expect(test_triangle.a).to(eq(3))
    # end
    it('returns false when all three side values are not equal') do
      test_triangle = Triangle.new('3', '3', '4')
      expect(test_triangle.triangle?()).to(eq(false))
    end
    it('returns true when all three side values are equal') do
      test_triangle = Triangle.new('3', '3', '3')
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end
end
