class Report < ActiveRecord::Base
  has_many :filters
  attr_accessible :name, :report_group, :file_name, :code, :is_secured, :date_range, :record_count, :security
end
