class Location < ActiveRecord::Base
  belongs_to :user
  
  acts_as_gmappable :check_process => false
  
  def gmaps4rails_address
    "#{latitude}, #{longitude}"
  end
  
  def gmaps4rails_title
      name
  end
  
  def gmaps4rails_infowindow
    "<h4>#{name}</h4>"
  end
end
