class User < ActiveRecord::Base
  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name= name
    self.first_name, self.last_name = name.split(/\s+/, 2)
  end
end
