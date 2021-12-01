class Course < ApplicationRecord
  belongs_to :family
  has_many :progresses, dependent: :destroy
end
