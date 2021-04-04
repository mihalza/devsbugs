class Bug < ApplicationRecord
  has_many :assignments, dependent: :destroy
  validates :title, uniqueness: true
end
