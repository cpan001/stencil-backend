class Design < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :design_tags, dependent: :destroy
  has_many :tags, through: :design_tags
  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :project_designs, dependent: :destroy
  has_many :projects, through: :project_designs
  has_many :connections, dependent: :destroy
  has_many :relateddesigns, through: :connections
  has_many :inverse_connections, class_name: "Connection", foreign_key: :relateddesign_id
  has_many :inverse_designs, through: :inverse_connections, source: :design
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes
end
