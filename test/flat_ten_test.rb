require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/test'
require './lib/flat_ten'
require 'pry'

class FlatTenTest < Minitest::Test

  def test_it_exists
    flat = FlatTen.new

    assert_equal FlatTen, flat.class
  end

  def test_can_flatten_2_elements
    flat = FlatTen.new
    flattened = flat.smash([1,2,3,[1,2,3]])

    assert_equal [1,2,3,1,2,3], flattened
  end

  def test_can_flatten_3_elements
    flat = FlatTen.new
    flattened = flat.smash([1,2,3,[1,2,3],[1,2,3]])

    assert_equal [1,2,3,1,2,3,1,2,3], flattened
  end

  def test_can_flatten_2_nested_elements
    flat = FlatTen.new
    flattened = flat.smash([1,2,3,[1,2,3],[1,[4,5,6]]])

    assert_equal [1,2,3,1,2,3,1,4,5,6], flattened
  end

  def test_can_flatten_2_nested_elements
    flat = FlatTen.new
    flattened = flat.super_smash([1,2,3,[1,2,3],[1,[4,5,6]]])

    assert_equal [1,2,3,1,2,3,1,4,5,6], flattened
  end
end
