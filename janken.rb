


# じゃんけんメソッドの作成
def janken 

    puts "----------------------------------"
    puts "じゃんけん..."
    puts "0(ぐー) 1(ちょき) 2(ぱー) 3(戦わない)"

    player_hand = gets.to_i

    computer_hand = rand(3)
    

    jankens = ["ぐー", "ちょき", "ぱー"]
    puts "-------------------------------"

    if player_hand == computer_hand
        puts "ほい！あなたは「#{jankens[player_hand]}」を出しました。相手は「#{jankens[computer_hand]}」を出しました。"
        puts "あいこでです。もう一回！"
        return true

    elsif (player_hand == 0) && (computer_hand == 1) ||
        (player_hand == 1) && (computer_hand == 2) ||
        (player_hand == 2) && (computer_hand == 0)
        puts "ほい！あなたは「#{jankens[player_hand]}」を出しました。相手は「#{jankens[computer_hand]}」を出しました。"
        puts "じゃんけんは、あなたの勝ちです。その調子！"
        attimuite_win

    elsif (player_hand == 0) && (computer_hand == 2) ||
        (player_hand == 1) && (computer_hand == 0) ||
        (player_hand == 2) && (computer_hand == 1)
        puts "ほい！あなたは「#{jankens[player_hand]}」を出しました。相手は「#{jankens[computer_hand]}」を出しました。"
        puts "じゃんけんは、あなたの負けです。"
        attimuite_lose

    elsif player_hand == 3
        puts "素晴らしい、平和的解決ですか。大人ですね。"
        return false
    else
        puts "0~3の半角数字を押してください。"
        return true
    end
end


#あっち向いてホイ(勝った場合) メソッド　playerが指を指すパターン
def attimuite_win
    puts "勝てるかも！"
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"

    player_finger = gets.to_i

    computer_face = rand(4)

    if player_finger > 3
        puts "0~3の半角数字を押してください。"
    end

    choices = ["上", "下", "左", "右"]
    puts "----------------------------------"
    puts "ホイ！！"

    if player_finger == computer_face
        puts "あなたは「#{choices[player_finger]}」を指しました。相手は「#{choices[computer_face]}」を向きました。"
        puts "あなたの勝ちです！"
        return false
    elsif (player_finger == 0) && (computer_face != 0) ||
        (player_finger == 1) && (computer_face != 1) ||
        (player_finger == 2) && (computer_face != 2) ||
        (player_finger == 3) && (computer_face != 3)

        puts "あなたは「#{choices[player_finger]}」を指しました。相手は「#{choices[computer_face]}」を向きました。"
        puts "惜しかった〜！勝敗がついていないので、もう一度です！"
        return true
    else
        puts "...もう一度じゃんけんから仕切り直しです！！"
        return true
    end
end

#あっち向いてホイ(負けた場合) メソッド playerが顔を向けるパターン
def attimuite_lose
    puts "負けないで〜〜〜"
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"

    player_face = gets.to_i

    computer_finger = rand(4)

    if player_face > 3
        puts "0~3の半角数字を押してください。"
    end

    choices = ["上", "下", "左", "右"]
    puts "ホイ！"

    if player_face == computer_finger
        puts "相手は「#{choices[computer_finger]}」を指しました。あなたは「#{choices[player_face]}」を向きました。"
        puts "あなたの負け...です。"
        return false
    elsif (player_face == 0) && (computer_finger != 0) ||
        (player_face == 1) && (computer_finger != 1) ||
        (player_face == 2) && (computer_finger != 2) ||
        (player_face == 3) && (computer_finger != 3)

        puts "相手は「#{choices[computer_finger]}」を指しました。あなたは「#{choices[player_face]}」を向きました。"
        puts "命拾いしましたね！勝敗がついていないので、もう一度です！"
        return true
    else
        puts "...もう一度じゃんけんから仕切り直しです！！"
        return true
    end
end


#じゃんけん繰り返し
next_game = true
while next_game
    next_game = janken
end