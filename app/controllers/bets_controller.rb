class BetsController < ApplicationController

def index
    @bets = Bet.order('bet_date DESC').all

end

def show
	@bets = Bet.order('created_at DESC').given_date(params[:bet_date])
end

def new
    @bet = Bets.new
end


end
