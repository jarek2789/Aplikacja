class Klient < ActiveRecord::Base
validates :nazwisko, length: { minimum: 5, maxsimum: 15 } :persence => true
  validates :imie, length: { minimum: 5, maxsimum: 15 } :persence => true
  has_many :albums
 end 


