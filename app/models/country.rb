class Country < ActiveRecord::Base
  has_many :cities

  before_create do
    name.downcase!
  end

  # Scope for Host location
  scope :host_location, -> {find_by(:host_location => true)}

  def self.host_location_cities
    self.host_location.cities.pluck(:name)
  end

  def city_names
    self.cities.pluck(:name)
  end

end
