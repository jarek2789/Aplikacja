json.extract! klient, :id, :nazwisko, :imie, :created_at, :updated_at
json.url klient_url(klient, format: :json)