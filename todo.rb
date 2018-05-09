require_relative "item"
require_relative "list"


class Todo
	attr_accessor :lines, :list

	def initialize 
		@list = List.new("Today")
	end

	def load
	   @lines = File.read("todo.md").split("\n")
       # @items = []

	   @lines.each do |line|
	     @today.add(Item.new(line[6..-1], line[3] == "x")) 
	   
	   end
	end

	def display
		puts "TODAY"
		@list.display
	end
end

 @todo = todo.new
 @todo.load
 @todo.display


