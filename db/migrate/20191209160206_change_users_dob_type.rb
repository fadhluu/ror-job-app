# frozen_string_literal: true

class ChangeUsersDobType < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :dob, :date
  end
end
