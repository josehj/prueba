class Quest < ActiveRecord::Base
has_many :qpjoin_tables
has_many :places, through :qpjoin_tables
end
