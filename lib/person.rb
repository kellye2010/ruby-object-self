# frozen_string_literal: true

# Define a Person class
class Person
  attr_reader :status
  # getter for 'status'
  #   def status
  #     @status
  #   end
  # attr_writer :status
  # def status=(new_status)
  #   @status = new_status
  # end
  def initialize
    @status = nil
  end

  def status=(new_status)
    @status = new_status
    # Side Effect of changing a Person's status is to say it
    # incorrect: %x(`say` "Status changed to #{status}")
    # correct: %x(`say "Status changed to #{status}"`)
    # but we will use the line below instead of the code above
    puts "Status changed to #{status}"
  end

  def log_in
    self.status = 'online'
  end

  def log_out
    # Problem:
    # Will not call the setter method to and notify -- nor say --
    # that the status
    # has changed!
    @status = 'offline'
    # self
  end
end
