class CreatePollOptionVoices < ActiveRecord::Migration[5.2]
  def change
    create_table :poll_option_voices do |t|
      t.belongs_to :poll_option, foreign_key: true, null: false
      t.belongs_to :voice, foreign_key: true, null: false

      t.timestamps
    end
  end
end
