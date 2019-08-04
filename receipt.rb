def register(cart)
  receipt = cart.reduce(0) { |memo, (key, value)|
    memo += (value[:price] * value[:count])
  }
end  

cart = {
  "PEANUT BUTTER" => {:price => 2.40, :clearance => true,  :count => 2},
  "KALE"         => {:price => 3.00, :clearance => false, :count => 3}
  "SOY MILK"     => {:price => 3.60, :clearance => true,  :count => 1}
}

register(cart)