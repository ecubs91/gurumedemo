class City < ActiveRecord::Base
  belongs_to :country

  before_create do
    name.downcase!
  end
end
