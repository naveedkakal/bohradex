class Contact < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true, uniqueness: true
  validates :gender,     presence: true

  enum gender: [:male, :female]

  scope :boys,  -> { where(gender: 0) }
  scope :girls, -> { where(gender: 1) }
end
