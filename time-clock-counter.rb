full_day = 28800

puts "What time did you clock in?"
clock_in_input = gets

puts "What time did you break for lunch?"
take_meal_input = gets

puts "What time did you clock back in from lunch?"
end_meal_input = gets

def generate_time(time_input)
    time_int = time_input.to_i

    hour_length = time_int.digits.size - 2

    hour = time_int.digits.reverse.first(hour_length).join.to_i

    minutes = time_int.digits.reverse.last(2).join.to_i

    Time.new(2022,1,1,hour,minutes)
    # Time.new(2022,1,1,8,01)
end


clock_in_time = generate_time(clock_in_input)

take_meal_time = generate_time(take_meal_input)

end_meal_time = generate_time(end_meal_input)


first_half_time_elapsed = take_meal_time - clock_in_time

time_remaining = full_day - first_half_time_elapsed

clock_out_time = end_meal_time + time_remaining

puts clock_out_time.strftime('%H:%M')