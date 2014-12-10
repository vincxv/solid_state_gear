class Page < ActiveRecord::Base
  validates :name, :permalink, presence: true
end
