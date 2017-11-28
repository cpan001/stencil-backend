class UserDesignSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :code, :description, :original, :views, :creator_id, :images
end
