class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	#agregamos el ID a la tabla de usuarios 
  	add_column :statuses, :user_id, :integer
  	add_index :statuses, :user_id
  	remove_column :statuses, :nombre
  end
end

#hicimos cambios al esquema de la tabla statuses, ahora esta formada por un id y contenido. ya no contamos
#con nombre y contenido, en la linea 6 eliminamos esa columna.