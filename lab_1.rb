class ComplexNumbers
	attr_reader :a, :b
	def initialize(a,b)
		@a = a
		@b = b
	end
	
	def +(other)
                @a += other.a
                @b += other.b
        self
        end
	        
 	def *(other)
                new_a = @a * other.a - b * other.b
                @b = @b * other.a + @a * other.b
                @a = new_a
        self
        end
	
	def bulk_add()
		@a= @a.sum
		@b= @b.sum
        self
        end	
	 	
	def display_results()
		puts "result #@a + #@b"
	end
end

multiply=ComplexNumbers.new(3,2)*ComplexNumbers.new(1,7)
addition = ComplexNumbers.new(3,2)+ComplexNumbers.new(1,7)
bulkadd = ComplexNumbers.new([1,2,3],[4,5,6]).bulk_add()

puts bulkadd.display_results()
puts addition.display_results()
puts multiply.display_results()
