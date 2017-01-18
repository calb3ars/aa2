def reverser(&prc)
  string = prc.call
  string.split(" ").map{|word| word.reverse}.join(" ")
end

def adder(plus = 1, &prc)
  base = prc.call
  base + plus
end

def repeater(times = 1, &prc)
  times.times do |i|
    prc.call
  end
end
