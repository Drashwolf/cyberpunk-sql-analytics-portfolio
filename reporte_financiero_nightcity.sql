SELECT l.nombre as 'locacion', 
l.ciudad,
count(t.id) as 'total_transacciones',
sum(t.precio_final) as 'precio_total_movido'
FROM locaciones l 
JOIN transacciones t
on l.id = t.locacion_id
join npcs n
on t.comprador_id = n.id
group by l.id, l.nombre, l.ciudad order by precio_total_movido desc;
