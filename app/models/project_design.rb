class ProjectDesign < ApplicationRecord
  belongs_to :project, touch: true
  belongs_to :design
end
