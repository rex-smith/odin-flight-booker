class Booking < ApplicationRecord
  has_and_belongs_to_many :passengers
  belongs_to :flight
  accepts_nested_attributes_for :passengers, reject_if: lambda {|attributes| attributes['name'].blank? || attributes['email'].blank? }
end
