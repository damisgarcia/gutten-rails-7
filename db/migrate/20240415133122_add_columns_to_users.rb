# frozen_string_literal: true

class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :phone, :string
    add_column :users, :gender, :integer
    add_column :users, :status, :integer, default: 0
    add_column :users, :role, :integer, default: 0
  end
end
