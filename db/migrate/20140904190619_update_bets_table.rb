class UpdateBetsTable < ActiveRecord::Migration
  def up
  	change_column :bets, :is_active, :boolean, :default => false
  end

  def down
  	change_column :bets, :is_active, :boolean, :default => nil
  end
end
