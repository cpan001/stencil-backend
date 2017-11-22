class Connection < ApplicationRecord
  belongs_to :design
  belongs_to :relateddesign, class_name: "Design"
end
