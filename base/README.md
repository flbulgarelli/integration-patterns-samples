# Integración por base de datos


![Diagrama de despliegue](https://raw.githubusercontent.com/flbulgarelli/integration_patterns/master/base/despliegue.png)

## Preparación

Para ejecutar este ejemplo hay que tener `sqlite` instalado localmente. Luego:

```
bundle install
```

Finalmente, es necesario crear la tabla que será usada como memoria compartida:

```bash
bundle exec ruby setup.rb
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
