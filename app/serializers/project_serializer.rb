class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :creator_id

  belongs_to :creator
  has_many :jointusers
  has_many :designs, serializer: UserDesignSerializer
end
