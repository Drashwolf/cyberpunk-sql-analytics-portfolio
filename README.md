# Cyberpunk SQL Analytics & Auditing Portfolio

Repositorio enfocado en demostrar habilidades avanzadas de modelado, consulta y análisis de datos utilizando SQL (MySQL / PostgreSQL). El proyecto simula un entorno masivo de auditoría y reportes financieros basado en un ecosistema de ciencia ficción.

## Tecnologías y Conceptos Utilizados
* **SQL (MySQL):** Consultas avanzadas, funciones de agregación (`SUM`, `COUNT`), cláusulas de filtrado estricto (`GROUP BY`, `ORDER BY`) y uniones complejas (`JOIN`).
* **Gestión de Bases de Datos Relacionales:** Estructuración de llaves primarias, foráneas y optimización de flujos transaccionales entre locaciones, transacciones y entidades.

## Consulta SQL Destacada (Reporte Financiero por Distrito)
El siguiente script genera un reporte global agrupando las transacciones por distrito, calculando el volumen total de operaciones y el flujo monetario ordenado de mayor a menor:

```sql
SELECT 
    l.nombre AS locacion, 
    l.ciudad, 
    COUNT(t.id) AS total_transacciones, 
    SUM(t.precio_final) AS precio_total_movido
FROM locaciones l
JOIN transacciones t ON l.id = t.locacion_id
JOIN npcs n ON t.comprador_id = n.id
GROUP BY l.id, l.nombre, l.ciudad 
ORDER BY precio_total_movido DESC;
```
## José Miguel — Estudiante de Ingeniería en Ciencias de la Computación / Desarrollador Junior en formación enfocado en Bases de Datos y Analítica.
