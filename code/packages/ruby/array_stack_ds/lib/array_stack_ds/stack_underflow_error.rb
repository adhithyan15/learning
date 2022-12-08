# frozen_string_literal: true

module ArrayStackDS
  ##
  # This class represents an underflow error encountered by the stack.
  # This means that the stack doesn't have enough elements to perform
  # the operation requested by the caller
  class StackUnderflowError < StandardError
    ##
    # Returns a custom error message for the error
    def message
      'Stack has underflowed'
    end
  end
end
