# recursive method
def pop_get (cash)
  pop_cash = cash / 2
  
  pop = {
    drink: pop_cash,
    bottle: pop_cash,
    cap: pop_cash,
    redeem_bottle: 0,
    redeem_cap: 0
  }

  p "bottle1 = " << pop[:bottle]
  redeem (pop)
end

def redeem (pop)
  #p pop[:bottle]
  return pop unless (pop[:bottle] >= 2 || pop[:cap] >= 4)

  pop_from_bottle = pop[:bottle] / 2
  pop[:bottle] %= 2
  pop[:redeem_bottle] += pop_from_bottle

  pop_from_cap = pop[:cap] / 4
  pop[:cap] %= 4
  pop[:redeem_cap] += pop_from_cap

  pop.each_key { | k | pop[k] += pop_from_cap + pop_from_bottle }

  redeem (pop)
end



while true
  puts "How much money ?"
  dollar = gets.strip

  break if(dollar == 'quit')

  p pop_get(dollar.to_i)

end

# normal method
def pop_get2 (cash)
  pop_cash = cash / 2
  
  pop = {
    drink: pop_cash,
    bottle: pop_cash,
    cap: pop_cash,
    redeem_bottle: 0,
    redeem_cap: 0
  }

  while (pop[:bottle] >= 2 || pop[:cap] >= 4)
    #p pop
    pop_from_bottle = pop[:bottle] / 2
    pop[:bottle] %= 2
    pop[:redeem_bottle] += pop_from_bottle

    pop_from_cap = pop[:cap] / 4
    pop[:cap] %= 4
    pop[:redeem_cap] += pop_from_cap

    #p pop
    #p pop_from_bottle, pop_from_cap

    pop.each_key { | k | pop[k] += pop_from_cap + pop_from_bottle }
  end
  pop
end