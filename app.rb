require 'sinatra'
require 'sinatra/js'

require_relative 'fizz_buzz'
register(Sinatra::JS)

helpers do
  def verify_numbers(params)
    params[:num1] =~ /^\d*$/ && params[:num2] =~ /^\d*$/
  end

  def pop_up
    '$(document).ready(function(){swal("Stupid Monkey!", "You need to enter numbers in the number boxes", "error");});'
  end
end

get '/' do
  erb :main
end

post '/' do
  if verify_numbers(params)
    @fizzbuzz = FizzBuzz.as_array(params) 
    erb :main 
  else
    @fizzbuzz= ['Cannot count letters, try a different input']
    @alert = js {pop_up}
    erb :main
  end
    
end

