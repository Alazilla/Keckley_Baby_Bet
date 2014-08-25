class Bet < ActiveRecord::Base
	belongs_to :user

	def self.given_date(date)
		where(:bet_date => date)
	end

end
