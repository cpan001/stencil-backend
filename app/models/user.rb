class User < ApplicationRecord
  has_secure_password
  has_many :designs, foreign_key: "creator_id"
  has_many :comments
  has_many :projects, foreign_key: "creator_id"
  has_many :collaborations, foreign_key: "collaborator_id"
  has_many :jointprojects, through: :collaborations, source: :project
  has_many :followed_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :follower_relationships, class_name: "Relationship", foreign_key: :followed_id

  has_many :followers, through: :follower_relationships
  has_many :followeds, through: :followed_relationships

  has_many :likes, foreign_key: "liker_id"
  has_many :likeddesigns, through: :likes, source: :design
end
