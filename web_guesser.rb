require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  guess  = params['guess'].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :guess => guess, :message => message}
  end

  def check_guess(guess)
    if guess    >= SECRET_NUMBER + 5
      message    = "WAY TOO HIGH!"
    elsif guess  > SECRET_NUMBER
      message    = "TOO HIGH!"
    elsif guess <= SECRET_NUMBER - 5
      message    = "WAY TOO LOW"
    elsif guess  < SECRET_NUMBER
      message    = "TOO LOW"
    else guess  == SECRET_NUMBER
      mesage     = "SOLID DUDE THE SECRET NUMBER IS #{SECRET_NUMBER}"
    end
  end
