katz_deli = []

def build_list line_array
    line_array.map.with_index(1) { |name, line_position| " #{line_position}. #{name}" }
end


def line line_array
    if line_array.length == 0
        puts "The line is currently empty."
    else
        puts "The line is currently:#{build_list(line_array).join}"
    end
end

def take_a_number (line_array, name)
    line_array << name
    puts "Welcome, #{name}. You are number #{line_array.length} in line."
end

def now_serving line_array
    if line_array.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{line_array[0]}."
        line_array.shift
    end
end