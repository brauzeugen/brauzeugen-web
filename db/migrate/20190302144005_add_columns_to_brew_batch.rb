class AddColumnsToBrewBatch < ActiveRecord::Migration[5.2]
  def change
    add_column :brew_batches, :description, :text, null: true
    add_column :brew_batches, :published_at, :datetime, null: true
  end
end
