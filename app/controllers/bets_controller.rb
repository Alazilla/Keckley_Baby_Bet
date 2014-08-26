class BetsController < ApplicationController

def index
    @bets = Bet.order('bet_date DESC').all

end

def show
	@bets = Bet.order('created_at DESC').given_date(params[:bet_date])
end

def show_active
	@bets = Bet.order('created_at DESC').given_date(params[:bet_date])
end

def new
    @bet = Bet.new
end

def create
	@bet = user.bets.new(bet_params)
	if @bet.save
    	redirect_to :action => :by_date
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
