class Api::MyExamplesController < ApplicationController
  def fortune_action
    render 'fortune.json.jb'
  end
end
