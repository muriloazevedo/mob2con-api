class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders, id: :uuid do |t|
      t.money :total_amount
      t.string :description
      t.belongs_to :customers
      t.timestamps
    end
  end
end
