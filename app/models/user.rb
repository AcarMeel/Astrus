class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  # Setup accessible (or protected) attributes for your model
  attr_accessible 	:primer_nombre, :primer_apellido, :nombre_perfil,
  					:email, :password, :password_confirmation
  # attr_accessible :title, :body

  has_many :statuses  #un usuario puede tener muchos status
#AQUI DEFINIMOS NOMBRE_COMPLETO
  def nombre_completo
  	primer_nombre + " " + primer_apellido
  end
end
