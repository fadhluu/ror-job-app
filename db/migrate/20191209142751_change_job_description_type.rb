# frozen_string_literal: true

class ChangeJobDescriptionType < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :job_description, :text
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
