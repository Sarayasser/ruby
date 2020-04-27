class ComplexNumbers
	attr_reader :a, :b
	@@count = 0
	
	def initialize(a,b)
		@@count+=1
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
	
		
	def ComplexNumbers.count
		@@count
	end

	def display_results()
		puts "result #@a + #@b"
	end
end

multiply=ComplexNumbers.new(3,2)*ComplexNumbers.new(1,7)
addition = ComplexNumbers.new(3,2)+ComplexNumbers.new(1,7)
bulkadd = ComplexNumbers.new([2,3,1],[4,2,7]).bulk_add()

puts addition.display_results()
puts multiply.display_results()
puts bulkadd.display_results()

puts ComplexNumbers.count
