# fizzbuzz.rbのリファクタ版
# get_fizz_buzzメソッドでFizzBuzzを判定
class Integer
  def get_fizz_buzz
    result = ''
    result = 'Fizz' if self.divide?(3)
    result += 'Buzz' if self.divide?(5)
    result.empty? ? self : result
  end

  def divide?(n)
    n.kind_of?(Integer) && self % n == 0
  end
end

# FizzBuzz
while true
  puts "0以外の半角数字を入力してください。"
  max = gets.chomp
  if max =~ /\A[0-9]+\z/ 
    if max != "0"
      1.upto(max.to_i) { |i| puts i.get_fizz_buzz }
      break
    elsif max == "0"
      puts "0が入力されています。"     
    end
  else
    puts "数字を認識できませんでした。"
  end  
end
