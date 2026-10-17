# sql-select-fundamentals

## ¿Por qué es mala práctica usar SELECT * en producción?

- **Exposición de datos sensibles:** con `SELECT *` quedan a la vista columnas como email, teléfono o dirección para alguien que solo quería saber el monto total de una venta.
- **Sobrecarga:** se traen columnas que no se necesitan. Si la tabla es grande, se cargan tanto la base de datos como la red por el volumen de datos que se mueve.

## ¿Por qué son importantes los alias para un stakeholder no técnico?

Cada área maneja su propio vocabulario y no tiene por qué dominar el del equipo de datos. Así como RRHH no está obligado a distinguir una PK de una FK, el área de Finanzas no tiene por qué saber qué significa `total_amount`, y menos si además no domina el inglés.

Un alias traduce el nombre técnico al lenguaje del negocio:

```sql
SELECT total_amount AS monto_total FROM sales;
```

Con `monto_total`, cualquiera del área puede interpretar el resultado sin pedir explicaciones.
