class Status < ActiveRecord::Base
  attr_accessible :contenido, :user_id
  belongs_to :user
end

#los atributos q llamamos "accesibles" son los q puede el usuario modificar o eliminar.
# el belongs_to es para indicarle q ese campo va a pertencer a user, es como hacer un foreign key
