class Bet < ActiveRecord::Base
	belongs_to :user
	attr_accessor :previous_bet
	attr_accessible :bet_date, :bet_amount

	before_save :deactivate_previous

	validates_presence_of :bet_amount
	validates_presence_of :bet_date

	def self.given_date(date)
		where(:bet_date => date)
	end

	def self.find_last(date)
		last(:bet_date => date)
	end

	def self.increase_bet(date)
		bet = where(:bet_date => date)
		bet.bet_amount =+ 1
	end

private
	def self.deactivate_previous
		if find_last(bet_date) != nil
			bet.active = false
		else
			nil
		end
	end
end
