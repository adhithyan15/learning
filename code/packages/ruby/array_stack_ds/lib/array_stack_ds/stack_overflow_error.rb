# frozen_string_literal: true

module ArrayStackDS
  ##
  # This class represents an overflow error encountered by the stack.
  # This means that the stack is at capacity and performing the
  # operation requested by the caller would result in an overflow.
  class StackOverflowError < StandardError
    ##
    # Returns a custom error message for the error
    def message
      'Stack has overflowed'
    end
  end
end
