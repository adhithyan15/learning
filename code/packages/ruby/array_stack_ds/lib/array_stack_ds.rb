# frozen_string_literal: true

require_relative 'array_stack_ds/version'
require_relative 'array_stack_ds/stack_overflow_error'
require_relative 'array_stack_ds/stack_underflow_error'

##
# This module contains an implemention of a stack data structure
# that uses an array based backing store.
module ArrayStackDS
  ##
  # This class represents a First In First Out (FIFO) Stack
  # datastructure. The implementation uses an array as the
  # backing store. You can specify a max size for the stack.
  class Stack
    ##
    # Create a new Stack
    def initialize(max_capacity = nil)
      @stack_elements = []
      @max_capacity = max_capacity
    end

    ##
    # Add a new element to the stack
    # @raise [StackOverflowError] If the max capacity of the stack is exceeded, then StackOverflowError will be raised
    def push(element_to_add)
      raise StackOverflowError if !@max_capacity.nil? && @stack_elements.length >= @max_capacity

      @stack_elements.unshift(element_to_add)
    end

    ##
    # Removes the top element from the stack
    # @raise [StackUnderflowError] If there are no elements in the stack, then StackUnderflowError will be raised
    def pop
      raise(StackUnderflowError) if @stack_elements.empty?

      @stack_elements.shift
    end

    ##
    # Returns the top element of the stack without returning it
    # @raise [StackUnderflowError] If there are no elements in the stack, then StackUnderflowError will be raised
    def peek
      raise(StackUnderflowError) if @stack_elements.empty?

      @stack_elements[0]
    end

    ##
    # Alias of the peek method. Returns the top element of the stack without returning it.
    # @raise [StackUnderflowError] If there are no elements in the stack, then StackUnderflowError will be raised
    def top
      peek
    end

    ##
    # Returns the length of the stack
    def length
      @stack_elements.length
    end

    ##
    # Alias of the length method. Returns the length of the stack.
    def size
      length
    end

    ##
    # Returns whether or not the stack is empty
    def empty?
      @stack_elements.empty?
    end

    ##
    # Returns whether or not the stack is full
    def is_full?
      @max_capacity.nil? ? false : @stack_elements.length == @max_capacity
    end
  end
end
