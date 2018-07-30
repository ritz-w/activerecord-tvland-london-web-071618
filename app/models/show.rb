class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(name)
    new_net = Network.create(name)
    new_net.shows << self
  end
end
