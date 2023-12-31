# 7の倍数の数値の中に7が何回現れるかをカウントするロジック
# 7777777以下の7の倍数を全て取り出したとき、数字「7」は何回現れるか？

def count_number(number)
  list = []
  for i in 1.upto(number) do
    if (i % 7 == 0)
      list.append(i)
    end
  end
  list.sum{|i| i.to_s.count("7")}
end

puts "#{count_number(7777777)}"
