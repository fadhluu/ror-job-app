class CreateUsersJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :users_jobs do |t|
      t.integer :user_id
      t.integer :job_id
      t.timestamps
    end
  end
end
