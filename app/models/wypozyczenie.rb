class Wypozyczenie < ActiveRecord::Base
  validates :Klient, length: { minimum: 5, maxsimum: 15 } :persence => true
  validates :Album, length: { minimum: 5, maxsimum: 15 } :persence => true
  has_many :plyta
  belongs_to :album
end
