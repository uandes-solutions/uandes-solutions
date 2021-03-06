class InternalAuthor < ApplicationRecord
  belongs_to :user
  belongs_to :document

  validates :user_id, presence: true
  validates :document_id, presence: true
end
