![Diagrama de despliegue](https://raw.githubusercontent.com/flbulgarelli/integration_patterns/master/cola/despliegue.png)

## Preparación

Para ejecutar este ejemplo hay que tener `rabbit-mq` instalado localmente. Por ejemplo:

```bash
sudo apt-get install rabbitmq-server
```

Luego:

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
