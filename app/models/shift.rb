class Shift < ApplicationRecord
  belongs_to :user

  searchkick 

  def search_data 
    {
      name: name
    }
  end
end
