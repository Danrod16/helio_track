class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :target
      t.string :website

      t.timestamps
    end
  end
end
