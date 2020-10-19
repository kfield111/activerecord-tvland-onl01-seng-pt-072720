class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    array = []
    self.actors.each do |temp|
      "#{temp.first_name} + #{temp.last_name}"
    end
  end

end
