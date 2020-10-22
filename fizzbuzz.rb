# FizzBuzz
while true
  puts "0以外の半角数字を入力してください。"
  max = gets.chomp
  if max =~ /\A[0-9]+\z/  
    if max != "0"
      for i in 1..max.to_i
        if i % 15 == 0
          puts "FizzBuzz"
        elsif i % 5 == 0
          puts "Buzz"
        elsif i % 3 == 0
          puts "Fizz"
        else
          puts i
        end
      end
      break
    elsif max == "0"
      puts "0が入力されています。"     
    end
  else
    puts "数字を認識できませんでした。"
  end
end