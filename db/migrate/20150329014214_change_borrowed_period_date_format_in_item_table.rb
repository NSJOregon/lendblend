class ChangeBorrowedPeriodDateFormatInItemTable < ActiveRecord::Migration
    def up
      change_column :items, :borrowed_period, 'integer USING CAST(borrowed_period AS integer)'
    end

    def down
      change_column :items, :borrowed_period, :integer
    end


end
