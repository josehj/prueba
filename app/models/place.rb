class Place < ActiveRecord::Base
belongs_to :city
has_many :qpjoin_tables
has_many :quests, through :qpjoin_tables
end
