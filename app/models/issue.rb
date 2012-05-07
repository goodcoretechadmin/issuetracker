class Issue < ActiveRecord::Base

  validates_presence_of :status, :issue_type, :description
  validates_inclusion_of :issue_type, :in => %w(Doctor Prep QA),
                         :message => "{{value}} is not a valid type"
  validates_inclusion_of :status, :in => %w(new open closed),
                         :message => "{{value}} is not a valid status"
  validates_associated :client

  belongs_to :client
  belongs_to :doctor, :counter_cache => true
  has_many :notes, :as => :noteable

  def self.find_by_client_doctor(client_name, doctor_name)
    Issue.all(:joins => [:client, :doctor],
              :conditions => "clients.name like '%" + client_name +"%' AND (doctors.first_name || doctors.last_name) like '%" + doctor_name + "%'")
  end
end
