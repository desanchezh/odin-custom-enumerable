module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    self.each do |element|
      if block_given?
        yield(element, index)
      end
      element
      index += 1
    end
  end

  def my_select
    array = []
    self.each do |value|
      array << value if yield(value)
    end
    array
  end

  def my_all?
    if block_given?
      i = 0
      array = []
      self.each do |value|
        i += 1
        array << value if yield(value)
      end
      return true if array.length  == i
    end
    false
  end

  def my_any?
    if block_given?
      self.each do |value|
        return true if yield(value)
      end
    end
    false
  end

  def my_none?
    if block_given?
      self.each do |value|
        return false if yield(value)
      end
    end
    true
  end

  def my_count
    i = 0
    if block_given?
      self.each do |value|
        i += 1 if yield(value)
      end
      return i
    end
    self.each do |value|
      i += 1
    end
    i
  end

  def my_map
    array = []
    self.each do |value|
      if block_given?
        array << yield(value)
      else
        array << value
      end
    end
    array
  end

  def my_inject(value = nil)
    acc = value == nil ? acc = 0 : value
    self.each do |element|
      acc = yield(acc, element)
    end
    acc
  end
end


# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for each in self do
      if block_given?
        yield(each)
      end
      each
    end
  end
end


