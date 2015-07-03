require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #Esta prueba crea en la variable user una nueva instancia del modelo, pero no la guarda en la BD.
  test "indicar primer nombre" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:primer_nombre].empty?		  	
  end

    test "indicar primer apellido" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:primer_apellido].empty?		  	
  end

    test "indicar nombre perfil" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:nombre_perfil].empty?		  	
  end

    test "indicar nombre perfil unico" do 
  	user = User.new
  	user.nombre_perfil = user(:meliaa).nombre_perfil
  	assert !user.save
  	assert !user.errors[:nombre_perfil].empty?		  	
  end

    test "indicar nombre perfil con formato" do 
  	user = User.new
  	user.nombre_perfil = 'Mi nombre con espacios'
  	assert !user.save
  	assert !user.errors[:nombre_perfil].empty?
  	assert user.errors[:nombre_perfil].include?("Debe estar formateado correctamente")		  	
  end
end
