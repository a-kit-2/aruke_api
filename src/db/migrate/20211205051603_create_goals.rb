class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.integer :steps
      t.datetime :term
      t.integer :penalties
      t.boolean :is_achieved
      t.boolean :is_deleted
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
