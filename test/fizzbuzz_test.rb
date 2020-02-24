require_relative 'test_helper'

describe 'fizzbuzz' do

  it 'gives back "Fizz" if the input is divisible by 3' do
    expect( do_fizzbuzz(3) ).must_equal "Fizz"    
    expect( do_fizzbuzz(6) ).must_equal "Fizz"
    expect( do_fizzbuzz(-9) ).must_equal "Fizz"
    expect( do_fizzbuzz(999) ).must_equal "Fizz"
    expect( do_fizzbuzz(12) ).must_equal "Fizz"
  end

  it 'gives back "Buzz" if the input is divisible by 5' do
    # TODO Add more test cases
    result = do_fizzbuzz(-5)

    expect(result).must_equal "Buzz"
  end

  it 'gives back the input when input is not divisable by 3 or 5' do
    
    expect( do_fizzbuzz(1) ).must_equal 1
    expect( do_fizzbuzz(7) ).must_equal 7
    expect( do_fizzbuzz(-98) ).must_equal -98
    expect( do_fizzbuzz(23) ).must_equal 23

  end

  it 'gives back "FizzBuzz" when the input is divisible by 5 and 3' do
    # TODO Add more test cases
    expect( do_fizzbuzz(15) ).must_equal "FizzBuzz"
  end

  it 'gives an ArgumentError when input is not an integer' do
    
    expect{do_fizzbuzz(2.3)}.must_raise ArgumentError
    expect{do_fizzbuzz("hi deeee")}.must_raise ArgumentError
    expect{do_fizzbuzz(:hi_deee)}.must_raise ArgumentError
    expect{do_fizzbuzz([1,2,3])}.must_raise ArgumentError


  end

end