require "test/unit"
require_relative "../lib/array_stack_ds"

include ArrayStackDS

class StackTest < Test::Unit::TestCase
    def test_peek_should_return_the_top_most_element
        stack = Stack.new
        stack.push(5)
        last_element = 10
        stack.push(last_element)
        assert_equal(stack.peek, last_element, "Peek should return the top most element of the stack")
    end

    def test_top_and_peek_should_return_same_output
        stack = Stack.new
        stack.push(5)
        stack.push(10)
        assert_equal(stack.peek, stack.top, "Peek and top should return the same value")
    end

    def test_should_raise_stackoverflow_if_max_capacity_exceeded
        stack = Stack.new(3)
        stack.push(5)
        stack.push(10)
        stack.push(15)
        assert_raises StackOverflowError do 
            stack.push(20)
        end
    end

    def test_length_should_return_length_of_stack
        stack = Stack.new
        assert_equal(stack.length, 0, "Length should return zero if the stack is empty")
        stack.push(5)
        stack.push(10)
        assert_equal(stack.length, 2, "Length should return the correct number of elements in the stack")
        stack.pop
        assert_equal(stack.length, 1, "Length should return the correct number of elements in the stack after pop")
    end

    def test_pop_should_raise_stackunderflow_if_stack_empty
        stack = Stack.new
        assert_raises StackUnderflowError do 
            stack.pop
        end
    end

    def test_peek_should_raise_stackunderflow_if_stack_empty
        stack = Stack.new
        assert_raises StackUnderflowError do 
            stack.peek
        end
    end

    def test_top_should_raise_stackunderflow_if_stack_empty
        stack = Stack.new
        assert_raises StackUnderflowError do 
            stack.top
        end
    end

    def test_pop_should_return_top_most_element_from_stack
        stack = Stack.new
        stack.push(5)
        last_element = 10
        stack.push(10)
        assert_equal(stack.pop, last_element, "Pop should return the top most element of the stack")
    end
end