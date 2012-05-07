class Client < ActiveRecord::Base

  validates_presence_of :name, :address
  has_many :issues
  has_many :notes, :as => :noteable
end
