def feeOrUpfront(n, k, x, d, p)
  fees = []
  mx = [k]

  p.each do |payment|
    # Per payment fee
    f = (payment.to_f * x.to_f) / 100.0
    fees << [f, k].max
  end

  # Sumup the payment fees
  fee = fees.inject(:+)

  # Check And Return Text
  return fee <= d ? 'fee' : 'upfront'
end

