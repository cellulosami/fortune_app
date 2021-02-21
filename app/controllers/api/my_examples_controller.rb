class Api::MyExamplesController < ApplicationController
  def fortune_action
    x = rand (1..3)
    if x == 1
      fortune = 'fortune_one.json.jb'
    elsif x == 2
      fortune = 'fortune_two.json.jb'
    else
      fortune = 'fortune_three.json.jb'
    end
    render fortune
  end

  def lottery_action
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
    Teak one down, pass it around, no more bottles of beer on the wall...
    
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall!"
    render json: @message
  end
end
