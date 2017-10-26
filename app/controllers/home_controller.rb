class HomeController < ApplicationController
  def index
  end

  def result
    @home = params[:home]
    @post = @home[:string]
    #binding.pry
  end
end
