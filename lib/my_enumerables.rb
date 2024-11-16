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


