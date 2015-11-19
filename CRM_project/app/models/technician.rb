class Technician < ActiveRecord::Base
  has_many :jobs
  has_many :customers, through: :jobs

  accepts_nested_attributes_for :jobs
  accepts_nested_attributes_for :customers
end
end
