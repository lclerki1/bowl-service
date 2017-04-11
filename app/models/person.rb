class Person < ActiveRecord::Base
  has_many :game_sets, :dependent => :delete_all
  
  scope :ordered_by_last_name, -> { order(last_name: :asc) }
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
