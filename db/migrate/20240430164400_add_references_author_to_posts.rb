# frozen_string_literal: true

class AddReferencesAuthorToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :author, null: false, foreign_key: { to_table: :users }
  end
end
