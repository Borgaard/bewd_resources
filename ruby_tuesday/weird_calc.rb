#if y'all wanted to calculate a 3 + 4 + 5 all divided by 2
#we'd right that (3+4+5)/2
#but Y'ALL there's another way of writing this same thing
#which is 3 4 + 5 + 2 /
#this is called postfix notation, and is equiv to infix notation (what we do)
#and is weird as shit.
#but is a lot easier for computers to handle processing.

#now y'all gonna write a function


def postfix_calc(input)
  def is_number?(arg)
      arg =~ /\A[-+]?[0-9]+\z/ ? true : false
   end
  tokens = input.split(' ')
  stack = []
  for token in tokens
    if is_number?(token)
      stack.push(token.to_i)
      # puts stack.to_s + "in if"
    else
      if token == "+"
        stack_popper = stack.pop
        stack_popper = stack_popper + stack.pop
        stack.push(stack_popper)
        # puts stack.to_s + "in else"
      elsif token == "-"
        #do a dance
        stack_popper = stack.pop
        stack_popper = stack.pop - stack_popper
        stack.push(stack_popper)
        # puts stack.to_s
      elsif token == "*"
        stack_popper = stack.pop
        stack_popper = stack_popper * stack.pop
        stack.push(stack_popper)
        # puts stack.to_s
      elsif token == "/"
        
      end
    end
  end
  return stack[0]
end

puts postfix_calc("3 4 + 5 +")
puts postfix_calc("9 1 -")
puts postfix_calc("9 3 *")

# def is_number? string
#   true if Float(self) rescue false
# end

# def is_number?(arg)
#     arg =~ /\A[-+]?[0-9]+\z/ ? true : false
#  end
# puts is_number?("+")


Ugo Aniukwu <ugo@smallhaxe.com>
Celeste Layne <layne.celeste@gmail.com>
