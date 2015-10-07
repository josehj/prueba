class Faction < ActiveRecord::Base
has_many :joined_factions
has_many :user, through :joined_factions
end
