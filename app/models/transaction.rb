class Transaction < ActiveRecord::Base
  belongs_to :consumer

  validates :total, presence: true, numericality: true
  # validates :successful, allow_blank: true
end
