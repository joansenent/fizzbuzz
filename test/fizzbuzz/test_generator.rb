require_relative '../test_helper'

# These tests test the Generator class
class TestGenerator < Minitest::Test
	# This method runs once before each test
	# It sets an instance member variable that can be used in the tests
	def setup
		@generator = FizzBuzz::Generator.new()
	end

  def test_the_size_of_the_generated_list
    result = @generator.create(5)
    assert_equal(5, result.size)
    result = @generator.create(20)
    assert_equal(20, result.size)
    result = @generator.create(100)
    assert_equal(100, result.size)
  end

	def test_numbers_that_are_not_substituted 
		result = @generator.create(10)
		assert_equal(1, result[0])
    assert_equal(2, result[1])
    assert_equal(4, result[3])
  end

  def test_numbers_that_are_divisible_by_3
    result = @generator.create(100)
    assert_equal("fizz", result[2])
    assert_equal("fizz", result[5])
    assert_equal("fizz", result[8])
    assert_equal("fizz", result[11])
    assert_equal("fizz", result[98])
  end

  def test_numbers_that_are_divisible_by_5
    result = @generator.create(100)
    assert_equal("buzz", result[4])
    assert_equal("buzz", result[9])
    assert_equal("buzz", result[49])
    assert_equal("buzz", result[94])
    assert_equal("buzz", result[99])
  end

  def test_numbers_that_are_divisible_by_3_and_5
    result = @generator.create(100)
    assert_equal("fizzbuzz", result[14])
    assert_equal("fizzbuzz", result[29])
    assert_equal("fizzbuzz", result[59])
    assert_equal("fizzbuzz", result[89])
  end
  	
end