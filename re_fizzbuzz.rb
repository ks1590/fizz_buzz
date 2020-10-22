# fizzbuzz.rbのリファクタ版
# get_fizz_buzzメソッドでFizzBuzzを判定
class Integer
  def get_fizz_buzz
    ret = ''
    ret = 'Fizz' if self.divide?(3)
    ret += 'Buzz' if self.divide?(5)
    ret.empty? ? self.to_s : ret
  end

  def divide?(n)
    n.kind_of?(Integer) && self % n == 0
  end
end

# FizzBuzz
while true
  puts "数字を入力してください(０以外)。"
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
