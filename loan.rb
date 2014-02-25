def provide_mortgage?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  min_deposit = property_value < 650000 ? 0.05 : 0.2
  max_multiplier = 5 
  deposit >= property_value * min_deposit && 
      (salary * max_multiplier >= loan_amount || 
      	deposit >= property_value * 0.75)
end
puts provide_mortgage?(salary, deposit, property_value)