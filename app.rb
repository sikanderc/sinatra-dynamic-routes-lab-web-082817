require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @username = params[:name]
    "#{@username.reverse}"
  end

  get '/square/:number' do
    @new_number = params[:number]
    @squared = @new_number.to_i ** 2
    "#{@squared.to_s}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @num.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    elsif @operation == "divide"
      "#{@num1 / @num2}"
    end
  end

end
