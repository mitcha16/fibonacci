require 'minitest/autorun'

require_relative 'fibber'

class Test_Fibber<Minitest::Test

  def test_for_correct_array_output
    test=Fibber.new
    assert_equal('[0, 1, 1, 2, 3, 5]', test.calculate(6), 'When inputting the number 6 you should get an array of 6 numbers of the fibbonaci sequence')
  end

  def test_for_zero
    test=Fibber.new
    assert_equal(nil, test.calculate(0), 'When inputting the number 0 you should get an array of the original numbers hardcoded into the array')
  end

end