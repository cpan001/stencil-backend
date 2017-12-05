class Project < ApplicationRecord
  has_many :collaborations
  belongs_to :creator, class_name: "User"

  has_many :project_designs
  has_many :designs, through: :project_designs

  has_many :collaborations
  has_many :jointusers, through: :collaborations, source: :collaborator

  validates :title, :creator_id, presence: true
end
