class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: "", limit: 120

      t.timestamps
    end
  end
end
