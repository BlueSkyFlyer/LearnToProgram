class OrangeTree

	def initialize tree 
		@tree = tree
		@age = 0
		@height = 0
		@oranges = 0
		@orange_capacity = 0

		puts "The tree has been planted."
	end

	def count_the_oranges
		"There are #{@oranges} in the tree."
		one_year_passes
	end

	def pick_an_orange
		@oranges = @oranges - 1
		"You picked an orange. There are #{@oranges} oranges left in the tree."
		one_year_passes
	end


	private 

	def one_year_passes
		@age = @age + 1
		@height = @height + 1
		if @age < 5
			puts "The tree #{@tree} still isn't producing oranges."
		elsif @age == 5
			@orange_capacity = 50
			@oranges = @orange_capacity
			puts "Your tree #{@tree} has started to produce fruit! This year it will have #{@oranges} oranges!"
		elsif @age >= 25
			@orange_capacity = 0
			@oranges = 0
			puts "Your tree's days are over. It has died."
			exit
		elsif @age > 5
			@orange_capacity = @orange_capacity + 10
			@oranges = @orange_capacity
			puts  "Your tree #{@tree} continues to grow. It can produce #{@oranges} this year!"

		end
	end
end

	tree = OrangeTree.new 'My Orange Tree'
	tree.count_the_oranges
	tree.count_the_oranges
	tree.pick_an_orange
	tree.pick_an_orange
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
	tree.count_the_oranges
