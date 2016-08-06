class Ticket < ApplicationRecord
  belongs_to :project
  belongs_to :author, optional: true, class_name: "User"
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
