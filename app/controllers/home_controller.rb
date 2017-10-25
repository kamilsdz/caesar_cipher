class HomeController < ApplicationController
  def index
  end

  def receive_post
    request.body.read
  end

  def result
    @string = receive_post
  end
end
