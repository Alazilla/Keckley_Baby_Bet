class BetsController < ApplicationController

def index
    @bet = Bets.all
 end

 def show
  end
 def new
    @bet = Bets.new
  end
end
