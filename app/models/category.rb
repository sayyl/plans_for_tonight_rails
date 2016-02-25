class Category < ActiveRecord::Base
  has_many :events

  validates: :name, presence: true
  validates: :description, presence: true

end
