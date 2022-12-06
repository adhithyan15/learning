# frozen_string_literal: true

require_relative "array_stack_ds/version"

module ArrayStackDS
  class Stack
    def initialize(max_capacity = nil)
      @stack_elements = []
      @max_capacity = max_capacity
    end

    def push(element_to_add)
      unless @max_capacity.nil?
        if @stack_elements.length >= @max_capacity
          raise StackOverflowError.new
        end
      end
      @stack_elements.unshift(element_to_add)
    end

    def pop
      if @stack_elements.length == 0
        raise StackUnderflowError.new
      end
      return @stack_elements.shift
    end

    def peek
      if @stack_elements.length == 0
        raise StackUnderflowError.new
      end
      return @stack_elements[0]
    end

    def top
      return peek()
    end

    def length
      return @stack_elements.length
    end
  end

  class StackOverflowError < StandardError
    def message
      return "Stack has overflowed"
    end
  end

  class StackUnderflowError < StandardError
    def message
      return "Stack has underflowed"
    end
  end
end
