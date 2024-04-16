# frozen_string_literal: true

class AddColumnStatusToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :status, :integer
  end
end