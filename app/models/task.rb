class Task < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :start_date, presence: true
  validates :estimated_end_date, presence: true
  validates :end_date, presence: true
  validates :privacy, presence: true
  validates :priority, presence: true
  validates :state, presence: true
  validates :needs_checking, presence: true
  validates :log, presence: true
  
  has_one :project_task
  has_one :project, through: :project_task
  has_one :task_goal
  has_one :goal, through: :task_goal
  has_one :task_iic
  has_one :icc, through: :task_iic
  has_one :cc_task
  has_one :case_coordination, through: :cc_task
  has_one :case_task
  has_one :case, through: :case_task
  has_one :derivation_task
  has_one :derivation, through: :derivation_task
end
