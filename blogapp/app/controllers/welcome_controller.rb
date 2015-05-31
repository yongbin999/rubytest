class WelcomeController < ApplicationController
  def index
  end

  def hello
  	render text:"hey"
  end

end
