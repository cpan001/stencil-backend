class OneDesignSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :code, :description, :creator_id


  has_many :tags
  has_many :images
  has_many :comments, serializer: DesignCommentSerializer
  belongs_to :creator
  # has_many :projects
  has_many :likes
end
