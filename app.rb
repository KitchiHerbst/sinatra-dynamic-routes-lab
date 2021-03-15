require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do 
    @sqr_num = params[:number].to_i * params[:number].to_i
    @sqr_num.to_s
  end

  get "/say/:number/:phrase" do 
    @array = []
    @repeat = params[:number].to_i
    @array = @array.fill(params[:phrase], @array.size, @repeat)
    @array*" "
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @add = (params[:number1].to_i + params[:number2].to_i).to_s
    @sub = (params[:number1].to_i - params[:number2].to_i).to_s
    @mult = (params[:number1].to_i * params[:number2].to_i).to_s
    @div = (params[:number1].to_i / params[:number2].to_i).to_s
    "#{@add} #{@sub} #{@mult} #{@div}"
  end

 



end