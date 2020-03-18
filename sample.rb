info = gets.split(" ")
height = info[0].to_f / 100
weight = info[1].to_f
bmi = weight / (height * height)
bmi = bmi.floor(1)
if bmi < 18.5
  puts "低体重"
elsif 18.5 <= bmi && bmi < 25
  puts "普通体重"
elsif 25 <= bmi && bmi < 30
  puts "肥満（１度）"
elsif 30 <= bmi && bmi < 35
  puts "肥満（2度）"
elsif 35 <= bmi && bmi < 40
  puts "肥満（3度）"
elsif 40 <= bmi
  puts "肥満（4度）"
end
