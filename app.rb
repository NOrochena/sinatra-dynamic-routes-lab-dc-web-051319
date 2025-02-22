# frozen_string_literal: true

require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    (@number**2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @str = ''
    @number.times do
      @str += @phrase
    end
    @str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = ''
    params.each do |_key, value|
      @str += (value + ' ')
    end
    @str.chomp(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    case @operation
    when 'add'
      (@num_1 + @num_2).to_s
    when 'subtract'
      (@num_1 - @num_2).to_s
    when 'multiply'
      (@num_1 * @num_2).to_s
    when 'divide'
      (@num_1 / @num_2).to_s
    end
  end
end
