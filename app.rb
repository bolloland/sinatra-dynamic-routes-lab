require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
      @word = params[:name]
      # binding.pry
      @word.reverse
    end

    get '/square/:number' do
      @sqr = params[:number].to_i * params[:number].to_i 
      @sqr.to_s
    end

    get '/say/:number/:phrase' do
        words = params[:phrase]
        count = params[:number].to_i
        binding.pry
        count.times do "#{words}"
        end
      end
    
      get '/say/:word1/:word2/:word3/:word4/:word5' do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
      end

      get '/:operation/:number1/:number2' do
        # binding.pry
        if params[:operation] == "add"
          sum = params[:number1].to_i + params[:number2].to_i
          sum.to_s
        elsif params[:operation] == "subtract"
          diff = params[:number1].to_i - params[:number2].to_i
          diff.to_s
        elsif params[:operation] == "multiply"
          product = params[:number1].to_i * params[:number2].to_i
          product.to_s
        elsif params[:operation] == "divide"
          quot = params[:number1].to_i / params[:number2].to_i
          quot.to_s
        else
          "I can't perform this operation."
        end
      end

  end