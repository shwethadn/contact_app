class UserProfile < ActiveRecord::Base
  belongs_to :user


def self.search(search)
  if search
    UserProfile.where(name: search)
  else
    UserProfile.all
  end
end


end
