def to_roman(num)
  # Your code here
  ans = ""

  roman = { r1000: 'M', r500: 'D', r100: 'C', r50: 'L', r10: 'X', r5: 'V', r1: 'I' }

  roman.each_key do |k|
    amount = k.to_s.delete('r').to_i
    ans << roman[k] * (num / amount)
    num %= amount
  end

  ans.gsub!(/DCCCC/, 'CM')
  ans.gsub!(/CCCC/, 'CD')
  ans.gsub!(/LXXXX/, 'XC')
  ans.gsub!(/XXXX/, 'XL')
  ans.gsub!(/VIIII/, 'IX')
  ans.gsub!(/IIII/, 'IV')
    
  ans
end

# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(1453) == "MCDLIII"
puts to_roman(1646) == "MDCXLVI"
 
# TODO: what other cases could you add to ensure your to_roman method is working?

def to_roman1(num)
  # Your code here
  ans = ""

  while (num / 1000 > 0)
    ans << 'M'
    num -= 1000
  end

  while (num / 500 > 0)
    ans << 'D'
    num -= 500
  end

  while (num / 100 > 0)
    ans << 'C'
    num -= 100
  end

  while (num / 50 > 0)
    ans << 'L'
    num -= 50
  end

  while (num / 10 > 0)
    ans << 'X'
    num -= 10
  end

  while (num / 5 > 0)
    ans << 'V'
    num -= 5
  end

  while (num > 0)
    ans << 'I'
    num -= 1
  end

  ans.gsub!(/DCCCC/, 'CM')
  ans.gsub!(/CCCC/, 'CD')
  ans.gsub!(/LXXXX/, 'XC')
  ans.gsub!(/XXXX/, 'XL')
  ans.gsub!(/VIIII/, 'IX')
  ans.gsub!(/IIII/, 'IV')

  ans
end

def to_roman2(num)
  # Your code here
  ans = ""

  ans << 'M' * (num / 1000)
  num %= 1000

  ans << 'D' * (num / 500)
  num %= 500

  ans << 'C' * (num / 100)
  num %= 100

  ans << 'L' * (num / 50)
  num %= 50

  ans << 'X' * (num / 10)
  num %= 10

  ans << 'V' * (num / 5)
  num %= 5

  ans << 'I' * (num)
  num %= 1

  ans.gsub!(/DCCCC/, 'CM')
  ans.gsub!(/CCCC/, 'CD')
  ans.gsub!(/LXXXX/, 'XC')
  ans.gsub!(/XXXX/, 'XL')
  ans.gsub!(/VIIII/, 'IX')
  ans.gsub!(/IIII/, 'IV')
    
  ans
end