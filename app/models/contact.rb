class Contact < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true, uniqueness: true
  validates :gender,     presence: true

  scope :boys,  -> { where(gender: 'm') }
  scope :girls, -> { where(gender: 'f') }
end
