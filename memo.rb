    require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
     memo_type = gets.chomp
    
    if memo_type == "1"
      puts "拡張子を除いたファイルを入力してください"
      name = gets.chomp
      CSV.open("#{name}.csv", "w") do |text|
      puts "メモしたい内容を記入してください"
      puts "入力後、Ctrl + D で保存"
      memo = STDIN.read
      text << ["#{memo}"]
      end
    elsif  memo_type == "2"
      puts "拡張子を除いたファイルを入力してください"
      name = gets.chomp
      CSV.open("#{name}.csv", "a") do |text|
      puts "メモしたい内容を記入してください"
      puts "入力後、Ctrl + D で保存"
      memo = STDIN.read
      text << ["#{memo}"]
      end 
    else
      puts "1(新規でメモを作成) 2(既存のメモ編集する)"
   end
  