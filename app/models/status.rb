class Status < ApplicationRecord
  validates :content, presence: true
  validates :content, uniqueness: true
  validates :show_date, uniqueness: true, unless: :nil?
end

