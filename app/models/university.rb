class University < ActiveRecord::Base

  before_create do
    name.downcase!
  end

end
