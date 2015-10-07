class JoinedFaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :faction
end
