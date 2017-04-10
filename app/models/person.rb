class Person < ActiveRecord::Base
  has_many :game_sets, :dependent => :delete_all
end
