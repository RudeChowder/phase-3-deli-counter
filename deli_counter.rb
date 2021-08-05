def line(queue)
  if queue.length == 0 
    puts "The line is currently empty."
  else
    output = "The line is currently:"
    queue.each_with_index do |person, index|
      output << " #{index + 1}. #{person}"
    end
    puts output
  end
end

def take_a_number(queue, person)
  queue << person
  puts "Welcome, #{person}. You are number #{queue.length} in line."
end

def now_serving(queue)
  if queue.length == 0
    puts "There is nobody waiting to be served!"
  else
    person = queue.shift()
    puts "Currently serving #{person}."
  end
end