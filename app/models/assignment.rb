class Assignment < ApplicationRecord
  belongs_to :dev
  belongs_to :bug
  has_many :devs
  has_many :bugs
  validates :dev, :uniqueness => { :scope => :bug, :message => "That developer is already working on that bug" }
end
