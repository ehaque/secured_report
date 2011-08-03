class Filter < ActiveRecord::Base
  belongs_to :report
  attr_accessible :name, :report_id, :field_name, :operation, :value
end
