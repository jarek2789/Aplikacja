class Plytum < ActiveRecord::Base
  belongs_to :wypozyczenie
  validates :nazwa, :persence => true
  validates :rodzaj, :persence => true
  validates :gatunek, :persence => true
end
