class AddIdDeletedToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :is_deleted, :boolean
  end
end
