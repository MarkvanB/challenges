# program
class Series
  attr_accessor :string_of_digits

  def initialize(string_of_digits)
    @string_of_digits = string_of_digits
  end

  def slices(length)
    new_array = []
    array = string_of_digits.split('').map!(&:to_i)
    if array.length >= length
      while array.length >= length
        new_array << array[0..(length - 1)]
        array.shift
      end
    else
      raise ArgumentError
    end
    new_array
  end
end
