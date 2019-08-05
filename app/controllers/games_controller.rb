require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(10)
  end

  def score
    # render plain: "Score: #{ param[:score] }"
    url = "https://wagon-dictionary.herokuapp.com/#{params["answer"]}"
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    if user["found"] == true &&
      @answer = "good"
    else
      @answer = "wrong"
    end
  end

  def check(input, word)
    input.each do |int|
  end

    # @answers = (params["answer"]).chars
    # @letters

  end
end


