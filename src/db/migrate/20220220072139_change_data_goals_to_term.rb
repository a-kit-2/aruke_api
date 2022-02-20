class ChangeDataGoalsToTerm < ActiveRecord::Migration[6.1]
  def change
    change_column :goals, :term, :date
  end
end
