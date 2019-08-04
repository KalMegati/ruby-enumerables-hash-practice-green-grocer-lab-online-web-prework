def register(cart)
  receipt = cart.reduce(0) { |memo, (key, value)|
    memo += (value[:price] * value[:count])
  }
end  