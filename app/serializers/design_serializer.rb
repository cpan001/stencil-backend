class DesignSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :code, :description, :original, :views, :creator_id


  has_many :tags
  has_many :images
  has_many :comments
  belongs_to :creator
  has_many :projects 
end
