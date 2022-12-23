class CreateDeliverables < ActiveRecord::Migration[7.0]
  def change
    create_table :deliverables do |t|
      t.string :name
      t.string :status, default: "pending"
      t.float :cost
      t.text :description
      t.references :project, null: false, foreign_key: true
      t.timestamps
    end
  end
end
