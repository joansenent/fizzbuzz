# The FizzBuzz module gives a namespace to the Generator
# This generator can be referred to as FizzBuzz::Generator
# The "sample data generator" may be referenced with Sample::Data::Generator
module FizzBuzz
	class Generator
		# This method returns a fizzbuzz list
		def create(size)
			(1..size).collect do |num|
				if (num % 3 == 0) & (num % 5 == 0)
					"fizzbuzz"
				else
					if (num % 3 == 0)
						"fizz"
					else
						if (num % 5 == 0)
							"buzz"
						else
							num
						end
					end
				end
			end

			# n = 2
			# while n < size
			# 	fizzbuzz_array[n] << "fizz"
			# 	n = n + 3
			# end
				
				# if n % 3 == 0
				# 	fizzbuzz_array(n) = "fizz"
				# end
			# n = 0
			# while n < size
			# 	if (n % 3 != 0) && (n % 5 != 0)
			# 		fizzbuzz_array << n
			# 	end
			# 	if (n % 3 == 0) && (n % 5 == 0)

			# 	end
				
			# end
		end
	end
end