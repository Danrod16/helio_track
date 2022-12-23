class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.string :name
      t.string :description
      t.string :status
      t.references :journey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
