class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { :minimum => 5 }

  belongs_to :user
  def to_s
    title
  end
  has_rich_text :description

  extend FriendlyId
  friendly_id :title, use: :slugged

  #this is more secure like payment method
  # friendly_id :generate_slug, use: : slugged
  # def generated_slug
  #   require 'securerandom'
  #   @random_slug ||= persisted? ? friendly_id : SecureRandom.hex(4)
  # end
end
