# Integración por archivos

![Diagrama de despliegue](https://raw.githubusercontent.com/flbulgarelli/integration_patterns/master/archivo/despliegue.png)


## Preparación

```
bundle install
```

## Ejecución

```bash
# productor
bundle exec ruby productor.rb

# consumidor
bundle exec ruby consumidor.rb

# alternativa: consumidor con delay simulado (expresado en segundos)
DELAY=3 bundle exec ruby consumidor.rb
```
