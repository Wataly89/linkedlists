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
	def append(data)
		current_node = @head  #starting point

		while current_node.next?  #while true loop through so long as there is a next value
			current_node = current_node.next_node #pointer to the next node (the variable is cycling until nil)
		end
		new_node = Node.new(data, nil) #new node with data being appended
		current_node.next_node = new_node #new pointer becomes that new data
	end

	def push(data)
		@head = Node.new(data, @head) #adding to the beginning
	end

	#pop(remove) an element to the stack
	def pop
	#I RETURN A VALUE
	 #return the value in the stack until nil
	 if @head.next_node == nil  #if the head is nil then return "nil"
	 	return nil

	 else   #if the value isn't nil return the next node value until the value is nil
	 	return_value = @head
	 	@head = @head.next_node
	 	return return_value

	 end
	 
	end

	def display
		current_node = @head

		while current_node.next?
			p current_node.data
			current_node = current_node.next_node
		end
		p current_node.data
	end


	def reverse_list
		current_node = @head 
		previous_node = nil #set up the list with the opp values
		next_node = nil

		while current_node != nil
			next_node = current_node.next_node #next node(pointer) setting it to the current node
			current_node.next_node = previous_node #set pointer to prev node
			previous_node = current_node #because you're going in rev the previous node becomes your curent node
			current_node = next_node #pointing the current node to to the next value 
		end
		
		@head = previous_node  #prev node will become the new head of the stack

	end


end


	stack = Stack.new(1)
	stack.push(2)
	stack.push(3)
	stack.display
	stack.reverse_list
	stack.display



