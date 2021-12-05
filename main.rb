def run_game

  @stones = [1, 2, 3 ,4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

  while true do
      while true do
        judge_player
        puts "取る石の数をお選びください[1~3]"
        stone_taken = gets.chomp.to_i
        if stone_taken == 1 || stone_taken == 2 || stone_taken == 3
          pick_stone(stone_taken)
          puts "#{@stones}"
          break
        else
          puts "もう一度入力してください"
        end
      end
  
      judge_computer
      if @stones == [1, 2, 3]
        computer_stone_taken = 2
      elsif @stones == [1, 2]
        computer_stone_taken = 1
      else
        computer_stone_taken = rand(1..3)
      end
      puts "相手は#{computer_stone_taken}個取りました"
      pick_stone(computer_stone_taken)
      puts "#{@stones}"
  end

end
  

def pick_stone(number)
  @stones.pop(number)
end

def judge_player
  if @stones == [1]
    puts "あなたの負けです"
    exit
  else
    return
  end
end

def judge_computer
  if @stones == [1]
    puts "あなたの勝ちです"
    exit
  else
    return
  end
end
  
puts "石取りゲームのスタートです"
puts run_game