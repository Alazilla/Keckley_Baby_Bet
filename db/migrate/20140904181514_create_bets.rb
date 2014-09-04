class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
    	t.date :bet_date, null: false
    	t.integer :bet_amount
    	t.integer :user_id
    	t.boolean :is_active

    	t.timestamps
    end
  end
end
