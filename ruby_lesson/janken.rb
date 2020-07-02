# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...

puts "最初はグーじゃんけん・・・・"

def janken
  puts "[0]グー\n[1]チョキ\n[2]パー"

  player = gets.to_i
  pc = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player]}, 相手の手:#{jankens[pc]}"

  if player == pc
    puts "あいこで"
    return true
  elsif (player == 0 && pc == 1)||(player == 1 && pc == 2)||(player == 2 && pc == 0)
    puts "あなたの勝ちです"
    return false

  elsif (player == 1 && pc == 0)||(player == 2 && pc == 1)||(player == 0 && pc == 2)
    puts "あなたの負けです"
    return false

  else player >= 3
    puts "入力された値が無効です"
    return true

  end
end



re_game = true

while re_game
  re_game = janken
end