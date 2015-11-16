class Jobs < ActiveRecord::Base
  belongs_to :customer, :technicians
end
