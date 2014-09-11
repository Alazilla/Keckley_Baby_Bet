class Bet < ActiveRecord::Base
	belongs_to :user
	attr_accessor :previous_bet
	attr_accessible :bet_date, :bet_amount, :is_active
	validates_presence_of :bet_date
	validates_presence_of :bet_amount

	scope :active, -> { where(:is_active => true) }
	scope :ordered, -> { order(bet_date: :desc) }
	scope :recent, -> { order(created_at: :desc) }
	


	def self.given_date(date)
		where(:bet_date => date)
	end

	def self.find_last(date)
		where(:bet_date => date).order("created_at desc").limit(1)
	end




end
