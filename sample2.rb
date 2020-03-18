data = gets.to_i
point = 0
data.times do |d|
  input_line = gets.split(" ")
  date = input_line[0].split("/")
  day = date[2]
  amount = input_line[1].to_i
  if day.to_i == 1
    point += (amount * 0.05).floor
  elsif day.include?("3")
    point += (amount * 0.02).floor
  elsif day.include?("5")
    point += (amount * 0.03).floor
  else
    point += (amount * 0.01).floor
  end
end

puts point