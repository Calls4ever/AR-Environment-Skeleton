class CreatePayTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pays do |t|
      t.integer :amount
      t.boolean :pending, :default => true
    end
  end
end
