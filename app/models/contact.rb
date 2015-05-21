class Contact < ActiveRecord::Base
  belongs_to :user

  def self.search(search, current_user_id)
  if search
    Contact.where(name: search)
  else
    Contact.where(user_id: current_user_id)
  end
end

end
