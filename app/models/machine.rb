class Machine < ActiveRecord::Base
  validates :stock_number, presence: true, uniqueness: true
  validates :serial, uniqueness: {allow_blank: true}
end
