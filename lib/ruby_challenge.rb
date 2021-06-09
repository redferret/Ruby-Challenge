module RubyChallenge
  # 1. Start at the back of the origianl string array with an index = string.length - 1
  # 2. Shovel the character at the given index, string[index], into a new string
  # 3. Repeat until index is 0
  # 4. return the new string

  def my_reverse(string)
    new_string = ''
    index_start = string.length - 1

    index_start.downto(0) do |index|
      new_string << string[index]
    end

    new_string
  end

  # 1. Iterate over each element in the array
  # 2. Is the element an array?
  #   a. If it is go back to step 1. for this element
  #     ii. Once done solving subarray, append the resulting subarray to the new array, [a, b] += [c] => [a, b, c]
  #   b. If not then shovel the element into the new array, [a] << b => [a, b]
  # 3. repeat until all elements are iterated over.
  # 4. Return the new array

  def flatten(array)
    array.reduce([]) do |flattened, element|
      if element.instance_of? Array
        flattened += flatten(element)
      else
        flattened << element
      end
      flattened
    end
  end
end