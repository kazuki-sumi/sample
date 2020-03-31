# 問題1
# 1から100までの数字を順番に出力する関数を作成してください。
# ただし、出力する数字が3の倍数の場合には「Fizz」を、出力する数字が5の倍数の場合には「Buzz」を、出力 する数字が3の倍数かつ5の倍数の場合には「FizzBuzz」を、それぞれ数字の代わりに出力してください。
# また、各数字もしくは文字列の出力の後に改行コード(LF - \n)を出力してください。

number = 0
100.times do |t|
  number += 1
  # 割り切れる(例. 1.0, 2.0など)数値でそれぞれ条件分岐させる
  if number / 15
    puts "FizzBuzz"
    puts "\n"
  elsif number / 3
    puts "Fizz"
    puts "\n"
  elsif number / 5
    puts "Buzz"
    puts "\n"
  else
    puts number
    puts "\n"
  end
end

# 問題2
# 1から1000までの素数を出力する関数を作成してください。
# 素数の定義は下記の通りである。
# 素数とは、1より大きい自然数で、約数が1と自分自身のみである数字である。

#　途中
number = 0
1000.times do |t|
  number += 1
  number / 2
end

# 問題3
# 0から9999までの数字を順番に1刻みで出力するプログラムを作成しました。 このプログラムを実行した際に、数字の7は何回出力されますか? 例えば、7777が出力された場合、数字の7は4回出力されたものとしてカウントします。 この問題の答え、もしくは答えを計算するためのプログラムを解答してください。
number = 0
count = 0
10000.times do |t|
  number += 1
  number_string = number.to_s.split("")
  number_string.each do |string|
    count += 1 if string.include?("7")
  end
end

puts count