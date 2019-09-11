class Node
	attr_accessor :data, :next_node

	def initialize(data, next_node=nil)
		@data = data
		@next_node = next_node
	end

	def next? #checking if next node is nil || bang returns false at the end of the list(checks until false)
		!@next_node.nil?
	end


end


class Stack
	attr_reader :head

	def initialize(data) 
		@head = Node.new(data, nil)
		#head(starting value)-default is nil
	end

	#push(adding) a value onto the stack
	def push(data)
		current_node = @head  #starting point
		while current_node.next?  #while true loop through so long as there is a next value
			current_node = current_node.next_node #pointer to the next node (the variable is cycling until nil)
		end
		new_node = Node.new(data, nil) #new node with data being pushed
		current_node.next_node = new_node #new pointer becomes that new data
	end

	#pop(remove) an element to the stack
	def pop
	#I RETURN A VALUE
	 #return the value in the stack until nil
	 #when nil return "end of stack"....where does next_node go?
	 if @data.value > nil
	 	puts "#{@data.value}"
	 else
	 	return "End of stack"
	 end
	 
	end

end


	def reverse_list(list)
		#ADD CODE HERE

		while list
			#ADD CODE HERE
			list = list.next_node
		end
		
		#ADD CODE HERE

	end


	stack = Stack.new(1)
	stack.push(2)
	stack.push(3)
	p stack.head