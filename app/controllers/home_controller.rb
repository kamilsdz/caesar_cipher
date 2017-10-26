class HomeController < ApplicationController
  def index
  end

  def result
    @home = params[:home]
    @post = @home[:string]
    #binding.pry
    CaesarCipher()
  end

  def CaesarCipher
    @result = ""
    rot = 13
    upper = Hash.new
    lower = Hash.new
    upper = {'A' => 0, 'B' => 1, 'C' => 2, 'D' => 3, 'E' => 4, 'F' => 5, 'G' => 6, 'H' => 7, 'I' => 8, 'J' => 9, 'K' => 10, 'L' => 11, 'M' => 12, 'N' => 13, 'O' => 14, 'P' => 15, 'R' => 16, 'S' => 17, 'T' => 18, 'U' => 19, 'V' => 20, 'W' => 21, 'X' => 22, 'Y' => 23, 'Z' => 24}
    lower = {'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 'h' => 7, 'i' => 8, 'j' => 9, 'k' => 10, 'l' => 11, 'm' => 12, 'n' => 13, 'o' => 14, 'p' => 15, 'r' => 16, 's' => 17, 't' => 18, 'u' => 19, 'v' => 20, 'w' => 21, 'x' => 22, 'y' => 23, 'z' => 24}
    array = @post.split(//)
    array.each do |s|
        if s.upcase!
          #string is lower
          value = lower[s.downcase]
          value += rot
          if value > 24
            value = value - 25 #25 is the number of elements
          end
          letter = lower.key(value)
        else
          #string is upper
          value = upper[s]
          value += rot
          if value > 24
            value = value - 25
          end
          letter = upper.key(value)
      end
      @result += letter
    end
  end
end
