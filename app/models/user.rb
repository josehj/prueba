class User < ActiveRecord::Base
has_many :joined_factions
has_many :factions, through :joined_factions
end
