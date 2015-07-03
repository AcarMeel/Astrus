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

  #validar el nombre
  validates :primer_nombre, presence: true
  validates :primer_apellido, presence: true
  validates :nombre_perfil, presence: true , 
                            uniqueness: true,
                            format:
                            {
                              with: /\A[a-zA-Z]+\z/ ,
                              message: 'Debe tener un formato correcto'
                            }

#AQUI DEFINIMOS NOMBRE_COMPLETO
  def nombre_completo
  	primer_nombre + " " + primer_apellido
  end
end
