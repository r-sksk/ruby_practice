#ボーナスドリンクの計算
def count_special_bottle(n)
    if n < 3
        0
    else
      (n-1)/2
    end
end

def count_bottle(n)
    n + count_special_bottle(n)
end

puts count_bottle(100)

