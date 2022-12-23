class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.string :status, default: "pending"
      t.references :step, null: false, foreign_key: true
      t.references :deliverable, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
