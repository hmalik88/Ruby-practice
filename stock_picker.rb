def stock_picker(stocks)
  keys = []
  values = []

  while stocks.length > 1
    keys.push(stocks[0])
    values.push(stocks.map{|diff| diff - stocks[0]}.max)
    stocks.shift
  end

  hash = keys.zip(values).to_h
  best = hash.max_by{|k,v| v}
  result = []
  result.push(keys.index(best[0]))
  result.push(keys.index(best[0] + best[1]))
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
