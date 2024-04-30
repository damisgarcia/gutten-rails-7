# frozen_string_literal: true

module RansackConcern
  extend ActiveSupport::Concern

  def self.included(base)
    base.columns.each do |column|
      if column.type == :string
        base.ransacker column.name.to_sym, type: :string do
          Arel.sql("lower(#{base.table_name}.#{column.name})")
        end
      end
    end
  rescue ActiveRecord::StatementInvalid
    false
  end
end
