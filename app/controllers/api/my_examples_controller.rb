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
end
