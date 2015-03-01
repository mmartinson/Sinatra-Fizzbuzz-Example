module FizzBuzz
extend self

  def puts(start=1, finish)
    for i in start..finish
      puts fb(i)
    end
  end
  

  def fb(num, params)
    snum=num.to_s
    num=num.to_i
    if num % 3 == 0 && num % 5 == 0
      "#{params[:word1]}#{params[:word2]}"
    elsif num % 3 == 0
      params[:word1]
    elsif num % 5 == 0
      params[:word2]
    else 
      snum
    end
  end


  def as_array(params)
    arr=[]
    for i in params[:num1]..params[:num2]
      arr<<fb(i, params)
    end
    arr
  end
end




