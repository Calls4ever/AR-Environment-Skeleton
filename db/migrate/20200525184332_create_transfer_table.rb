class CreateTransferTable < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.boolean :pending, :default => false
    end
  end
end
