class Dev < ApplicationRecord
  has_many :assignments
  validates :devname, uniqueness: true
end
