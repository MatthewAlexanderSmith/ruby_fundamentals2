puts "Enter a Temperature in Fareheit (degF)"
temp = gets

  def F_to_C (temp)
    temp = temp.to_f
    y = (temp - 32) * (5.0/9.0)
    p "#{temp.round(2)}degF = #{y.round(2)}degC"
  end

F_to_C(temp)
