class Like < ApplicationRecord
  belongs_to :design
  belongs_to :liker, class_name: "User"
end
