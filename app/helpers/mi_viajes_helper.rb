module MiViajesHelper
  def dameSiguiente(mi_viaje)
    candidato=MiViaje.where('order_in_trip = ?',MiViaje.where('order_in_trip > ?',mi_viaje.order_in_trip).minimum('order_in_trip')).first
    candidato=mi_viaje if candidato.nil?
    return candidato
  end
  
  def dameAnterior(mi_viaje)
    candidato=MiViaje.where('order_in_trip = ?',MiViaje.where('order_in_trip < ?',mi_viaje.order_in_trip).maximum('order_in_trip')).first
    candidato=mi_viaje if candidato.nil?
    return candidato
  end
end
