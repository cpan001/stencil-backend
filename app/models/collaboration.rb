class Collaboration < ApplicationRecord
  belongs_to :project
  belongs_to :collaborator, class_name: "User"
end
