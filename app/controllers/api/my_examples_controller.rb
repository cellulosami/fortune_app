class Api::MyExamplesController < ApplicationController
  def fortune_action
    fortune = ["the snakes are coming for you", "the snakes feel satiated today", "the snakes would like to play please bring your volleyball", "the snakes feel sad and would like you to pet them", "the snakes are missing. Where did they go?", "the snakes are dancing the Macarena", "the snakes have tasted of human blood. Give them a wide berth today", "the snakes are checking up on your progress tomorrow. Be prepared and be wary."]

    @sample_fortune = fortune.sample

    render 'fortune.json.jb'
  end

  def lottery_action
    @all_numbers = []
    6.times do
      @all_numbers << rand(1..60)
    end
    render 'lottery.json.jb'
  end

  def visit_action
    @number_of_visits = 0
    @number_of_visits += 1
    render 'visit.json.jb'
  end

  def bottles_action
    @message = ""
    @bottle_quantity = 99
    97.times do
      @message = @message + "#{@bottle_quantity} bottles of beer on the wall, #{@bottle_quantity} bottles of beer."
      @bottle_quantity -= 1
      @message = @message + "
      Take one down, pass it around, #{@bottle_quantity} bottles of beer on the wall...
      
      "
    end
    @message += "1 bottle of beer on the wall, 1 bottle of beer.
    Take one down, pass it around, no more bottles of beer on the wall...
    
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall!"

    render json: @message
  end
end
