class Album < ActiveRecord::Base
has_many :wypozyczenies
  belongs_to :klient 
  validates :nazwa, length: { minimum: 5, maxsimum: 15 } :persence => true
  validates :wykonawca, length: { minimum: 5, maxsimum: 15 } :persence => true
end
