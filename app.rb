require_relative 'config/environment'

class App < Sinatra::Base

  post "/piglatinize" do
    english_phrase = params[:user_phrase]
    @pigged_out_phrase = PigLatinizer.new.to_pig_latin(english_phrase)
    erb :user_input
  end

  get "/" do
  	 erb :index
  end

end
