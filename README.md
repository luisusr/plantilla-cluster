# plantilla-cluster
Plantilla entorno cluster distribuido con despliegues componentes cross.


Es un proyecto base que cuenta con despliegues de componentes cross necesarios para una solucion completa sobre una arquitectura orientada a microservicios y en entornos distribuidos. El cual se despliega sobre un cluster de kubernetes los cuales incluyen.

* Balanceador de carga (Traefik)
* Componente de monitorizacion de trazas (EFK)
* Componente de monitorizacion de cluster (Prometheus + Grafana) PENDIENTE DESPLIEGUE
* componente de trazabilidad (Jaeger) PENDIENTE DESPLIEGUE
* Un microservicio de prueba con dependencias necesarias para interaccion con componentes

Requisitos:
* Maven 3.x
* Jdk 8
* Kubernetes
* Container runtime (Docker)
* [Ejecutar registry local](https://docs.docker.com/registry/deploying/)

Para el caso de linux se utiliza la instalacion desde el repositorio de kubernetes, para macos y windows se puede utilizar docker for desktop aunque para windows se tienen que ejecutar el contenido de los script ya que son bash (.sh)



PARA DESPLEGAR MODULOS CROSS
* Linux y Mac OS: Dentro de directorio Componentes_core/kubernetes ejecutar: **deploy**
* Windows: Ejectuar contenido dentro de archivo

PARA DESPLEGAR MICROSERVICIO DE PRUEBA
1. Instalar modulo de dependencias comun en directorio: Modulos/cima-comun: **mvn install**
2. Linux y Mac OS: Dentro de directorio de modulo Modulos/pocws ejecutar: **build**
3. Windows: Ejectuar contenido dentro de archivo

NOTA: quedan tambien pendientes de desplegar microservicio de discovery y/o centralizador de api y ejemplo de cloud config para entornos

