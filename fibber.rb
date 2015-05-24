class Fibber

  #calculates numbers and pushes them to array
  def calculate(number)
    #creates array starting with 0 and 1
    numbers=[0, 1]
    #however many times in parameter do this
    (number-2).times { |i|
      total=numbers[i]+numbers[i+1]
      numbers.push(total)
    }
    #return array
    return numbers

  end


  #prints out numbers in a neat fashion
  def print_numbers(numbers, input)
    return nil if input==0
    return puts "0" if input<2

    space=spacing(numbers.last.to_s)
    ((numbers.count)/5).times {
      n1=numbers.shift.to_s
      n2=numbers.shift.to_s
      n3=numbers.shift.to_s
      n4=numbers.shift.to_s
      n5=numbers.shift.to_s

      puts "#{n1.center(space, ' ')}#{n2.center(space, ' ')}#{n3.center(space, ' ')}#{n4.center(space, ' ')}#{n5.center(space, ' ')}"

    }

#prints numbers when the input is not a multiple of 5
    numbers.count.times do
      remainder=numbers.shift.to_s
      print "#{remainder.center(space, ' ')}"
    end

  end

  #responsible for determining the appropriate spacing

  def spacing(total)
    return total.length+1
  end
end


c1=Fibber.new
puts "What quantity would you like?"
input=gets.chomp
int=input.to_i
answer=c1.calculate(int)

c1.print_numbers(answer, int)


































