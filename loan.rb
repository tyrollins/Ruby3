def provide_mortgage?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  property_value < 650000 ? min_deposit = 0.05 : min_deposit = 0.2
  max_multiplier = 5 # how many annual income can be borrowed
  deposit >= property_value.to_i * min_deposit && 
      salary * max_multiplier >= loan_amount
end
puts provide_mortgage?(30_000, 50_000, 200_000)