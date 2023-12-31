# トリボナッチ数列で数字を取り出す
# スタンダードに[ 0, 0, 1]から始めるものとしたいと思います。
# （[ 1, 1, 2]から始まることもあるみたい)
# トリボナッチ数列は[0, 0, 1]から始まり、
# その後の項が前3つを足したものになる数列です。
# 例：[ 0, 0, 1, 1, 2, 4, 7, 13, 24, 44, 81]

def tribonacch(n)
  return if n < 1
  a, b, c = 0, 0, 1
  (n-1).times {a, b, c =b, c, a + b + c }
  a
end

puts "数を出したいのは何項目ですか？"
n = gets.to_i

puts "#{n}項目の数字は#{tribonacch(n)}"




# 1,3,7,11,21,39...
# 50番個目にある数字は何ですか？

puts "求めたい数字を入力してください"
puts "1つ目の数字"
a = gets.to_i
puts "2つ目の数字"
b = gets.to_i
puts "3つ目の数字"
c = gets.to_i
puts "何番目の数字を求めますか？"
t = gets.to_i

n = 0
while n < (t - 3)
  d = a + b + c
  a = b
  b = c
  c = d
  n += 1
end

puts "#{t}番目の数は#{c}です"


# # ふつうに
# a = [1, 3, 5]
# c = 0
# while c < 47
#   a.push(a[c] + a[c + 1] + a[c + 2])
#   c += 1
# end

# puts a[-1]


a, b, c = 1, 3, 7
(50 - 1).times {a, b, c = b, c, a + b + c }
puts "{a}"