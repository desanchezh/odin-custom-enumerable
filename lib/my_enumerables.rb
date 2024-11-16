module Enumerable
  # Your code goes here
  def my_each_with_index
    self.each do |elem|
      i = 0
      sx
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
    if block_given?
      for each in self do
        yield(each)
      end
    end
    for each in self do
      array = []
      array << each
    end
  end
end


