class Stack
    def initialize(limit = nil)
      @stack = []
      @limit = limit
    end
  
    def push(value)
      if @limit.nil? || @stack.length < @limit
        @stack.push(value)
      else
        raise "Stack is full"
      end
    end
  
    def pop
      @stack.pop
    end
  
    def peek
      @stack.last
    end
  
    def size
      @stack.length
    end
  
    def empty?
      @stack.empty?
    end
  
    def full?
      !@limit.nil? && @stack.length >= @limit
    end
  
    def search(value)
      index = @stack.rindex(value)
      index ? @stack.length - index : -1
    end
  end
  