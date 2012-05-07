class Doctor < ActiveRecord::Base

  has_many :issues
  has_many :notes, :as => :noteable

  def name
    first_name + ' ' + last_name
  end
end
