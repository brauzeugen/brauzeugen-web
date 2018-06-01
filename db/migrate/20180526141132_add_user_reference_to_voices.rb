class AddUserReferenceToVoices < ActiveRecord::Migration[5.2]
  def change
    add_reference :voices, :user, foreign_key: true
  end
end
