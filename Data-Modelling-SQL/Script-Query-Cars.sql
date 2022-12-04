/* QUERY SQL

-- Coches activos que hay en KeepCoding:
-- Nombre modelo, marca y grupo de coches (los nombre de todos)
-- Fecha de compra
-- Matricula
-- Nombre del color del coche
-- Total kilómetros
-- Nombre empresa que esta asegurado el coche
-- Numero de póliza */

select m.nombre as nombre_modelo, mar.nombre as nombre_marca , g.nombre as nombre_grupo,c.fecha_de_compra, c.matricula, c.color, c.total_km, a.nombre as nombre_aseguradora, c.poliza 
from prueba_coches.coche c join prueba_coches.modelo m on (c.idmodelo = m.idmodelo)
join prueba_coches.marca mar on (m.idmarca = mar.idmarca)
join prueba_coches.grupo_empresarial g on (mar.idgrupoe = g.idgrupoe)
join prueba_coches.aseguradora a on (c.idaseguradora = a.idaseguradora)