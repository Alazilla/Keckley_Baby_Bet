class BetsController < ApplicationController

def index
    @bets = Bet.all

end

def show
	@bet = Bet.find(params[:id])
end

def new
    @bet = Bets.new
end

def self.claim_bet(date, user_id)
		
		if bet && user_id != bet.user_id
			bet.amount +=1
			bet.user_id = user_id
		else
			

	end

end

private
def fetch_bet
	@bet = Bet.find(params[:bet_date])
end

end
