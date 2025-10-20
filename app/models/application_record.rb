class ApplicationRecord < ActiveRecord::Base
  self.table_name_prefix = 'judge0_'
  self.abstract_class = true
end
