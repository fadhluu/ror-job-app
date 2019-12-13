class Job < ApplicationRecord
  has_many :users_jobs
  has_many :users, through: :users_jobs, dependent: :destroy
end
