# frozen_string_literal: true

# for chaining methods
class MethodChainer
  attr_reader :content

  def initialize(str)
    @content = str
  end

  def reverse!
    @content = @content.reverse
    # self -- notice the difference when commented out
    # What is returned?
  end

  def caps!
    @content = @content.upcase
    self
  end

  def double!
    @content += @content
    self
  end
end

# string = MethodChainer.new("apple")
# string is an object that is an instance of the the MethodChainer class object (Yes, they are both objects; string is an object of the object MethodChainer)
