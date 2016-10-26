class String
	self
  def palindrome?
  	@self=self
  	car = self.downcase.scan(/\w/)
    if car == car.reverse
    	puts true
    else
    	puts false
  end
end
end

"anita lava la tina".palindrome? # => true
"hora de irse".palindrome? # => false
"menem".palindrome?