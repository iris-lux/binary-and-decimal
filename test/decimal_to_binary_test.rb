require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "decimal to binary" do
  it "From 153 to 10011001" do

    decimal = 153
    expected_binary_array = [1, 0, 0, 1, 1, 0, 0, 1]

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

  it "From 13 to 00001101" do

    decimal = 13
    expected_binary_array = [0, 0, 0, 0, 1, 1, 0, 1]

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

  it "From 128 to 10000000" do

    expected_binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    decimal = 128

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end


end
