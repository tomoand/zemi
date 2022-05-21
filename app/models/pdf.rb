class Pdf < ApplicationRecord
  mount_uploader :pdf, FileUploader

  validates :username, presence: true, length: { maximum: 100}
  validates :date, presence: true, length: { maximum: 100}
  validates :filename, presence: true, length: { maximum: 100}
  validates :body, presence: true, length: {maximum: 1000}
  validates :pdf, presence: true
  
end
