email_address = gets.chomp.split("@")
first_half_address = email_address[0]
latter_half_address = email_address[1]
judgment = true

def judgment_address(address)
  small_alphabet = ("a".."z").to_a
  large_alphabet = ("A".."Z").to_a
  alphabet = small_alphabet.concat(large_alphabet)
  alphabet.any? { |a| address.include?(a) }
end

# 先頭・末尾に使用できる文字: 半角英字、@に隣接できる文字: 半角英字
judgment = false unless first_half_address[0].match(/^[a-zA-Z]*$/)
judgment = false unless first_half_address[first_half_address.size - 1].match(/^[a-zA-Z]*$/)
judgment = false unless latter_half_address[0].match(/^[a-zA-Z]*$/)
judgment = false unless latter_half_address[latter_half_address.size - 1].match(/^[a-zA-Z]*$/)

# @以降に使用が必須となる文字: 半角英数字、ピリオド
judgment = false unless judgment_address(latter_half_address)
judgment = false unless latter_half_address.include?(".")

# @以前に許可されている文字: 半角英数字、ハイフン、ピリオド
judgment = false unless judgment_address(first_half_address)
judgment = false unless first_half_address.include?(".")
judgment = false unless first_half_address.include?("-")

if judgment == true
  puts "適切なメールアドレスです"
else
  puts "不適切なメールアドレスです"
end