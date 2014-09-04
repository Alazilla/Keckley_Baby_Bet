class BetsController < ApplicationController

def index
    @bets = Bet.active.ordered

end

def show
	@bets = Bet.given_date(params[:bet_date]).recent
end

def show_active
	@bets = Bet.recent.given_date(params[:bet_date])
end

def new
    @bet = Bet.new
end

def create
	@bet = user.bets.new(bet_params)
	if @bet.save
    	redirect_to :action => :index
	else
		nil
	end
end


private 
def user
	current_user
end

def bet_params
	params.require(:bet).permit(:bet_date, :bet_amount, :user_id)
end

end
