# frozen_string_literal: true

class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job
      t.string :job_description
      t.string :company
      t.timestamps
    end
  end
end
