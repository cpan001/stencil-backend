class Collaboration < ApplicationRecord
  belongs_to :project, touch: true
  belongs_to :collaborator, class_name: "User"
end
