class AddSerialNumberToBrewBatch < ActiveRecord::Migration[5.2]
  def change
    add_column :brew_batches, :serial_number, :string, null: false, default: 'BG??-??'
  end
end
