# Ejemplos de patrones de integración de aplicaciones

Este repositorio contiene ejemplos con fines didácticos sobre cuatro patrones de integración de aplicaciones:

1. Integración por archivos
2. Integración por base de datos
3. Integración por API HTTP (en concreto, REST)
4. Integración por cola de mensajes

# Notas

🏁 Los cuatro ejemplos se inician ejecutando dos procesos, en terminales diferentes:

```bash
# productor
bundle exec ruby productor.rb

# consumidor
bundle exec ruby consumidor.rb

# alternativa: consumidor con delay simulado (expresado en segundos)
DELAY=3 bundle exec ruby consumidor.rb
```
:eyes: Cada uno contiene además el diagrama de despliegue correspondiente.

:warning: Los ejemplos **no pretenden** ser _correctos_ desde el punto de vista de seguridad o buenas prácticas de programación sino claros desde el punto de vista didáctico, aún sin conocimiento de las tecnologías subyacentes ni del lenguaje ruby.
