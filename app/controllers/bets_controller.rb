class BetsController < ApplicationController

def index
    @bets = Bet.active.ordered
    @date = Date.today
    @month_before = @date.beginning_of_month-1
    @month_after = @date.end_of_month+1
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
	respond_to do |format|
		format.js
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
