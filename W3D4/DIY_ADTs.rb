class Stack #last in first out
    attr_reader :ivar

    def initialize
      @ivar = [] # create ivar to store stack here!
    end

    def push(el)
        @ivar.push(el) # adds an element to the stack
        el
    end

    def pop
        @ivar.pop     # removes one element from the stack
    end

    def peek
        @ivar[-1] # returns, but doesn't remove, the top element in the stack
    end
  end

stack_one = Stack.new
stack_one.push("kory")
stack_one.push("kyle")
stack_one.push("klay")
stack_one.pop
p stack_one
p stack_one.ivar

stack_one.push("john")
stack_one.push("mike")
stack_one.push("nick")
stack_one.pop
p stack_one
p stack_one.ivar

class Queue
    attr_reader :line

    def initialize
        @line = []
    end

    def enqueue(el)
        @line << el
        el
    end

    def dequeue
        @line.shift
    end

    def peek 
        @line[-1]
    end

end

qdoba_queue = Queue.new
qdoba_queue.enqueue('kory')
qdoba_queue.enqueue('kiana')
qdoba_queue.enqueue('sam')
qdoba_queue.enqueue('madre')
qdoba_queue.dequeue
p qdoba_queue.line

class Map
    attr_reader :pair

    def initialize
        @pair = []
    end
    
    def set(key, value)

    end

    def get(key)
        @pair.each do |subarr|
            return subarr[1] if subarr[0] == key
        end
    end

    def delete(key)
        @pair.select! { |subarr| subarr[0] != key }
        get(key)
    end

    def show
        new_pair = []
        # pair.each do |ele|
            # if ele.instance_of? Array 
                
            # end
        # end
    end

end