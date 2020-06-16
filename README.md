# plantilla-cluster-k8s
Plantilla para proyecto entorno cluster distribuido microservicios y componentes cross.

**NOTA IMPORTANTE:** Este repositorio queda deprecado. Los nuevos cambios, funcionalidades y mantenimientos. Se seguiran realizando sobre [El nuevo](https://github.com/luisusr/poc-k8s-cluster)

Es un proyecto base que cuenta con despliegues de componentes necesarios para control sobre una solucion completa basada en  arquitecturas orientadas a microservicios y en entornos distribuidos. El cual se despliega sobre un cluster de kubernetes como orquestador PAAS y runtime de Docker para ejecucion de contenedores los cuales incluyen.

* Balanceador de carga (Traefik)
* Componente de monitorizacion de trazas (EFK)
* Componente de monitorizacion de cluster (Grafana) PENDIENTE DE AGREGAR
* componente de trazabilidad (Jaeger) PENDIENTE DE AGREGAR
* Un microservicio de prueba con dependencias necesarias para interaccion con componentes

Requisitos:
* Maven 3.x
* Jdk 8
* Kubernetes
* Container runtime (Docker)
* [Ejecutar registry local](https://docs.docker.com/registry/deploying/)

Para el caso de linux se utiliza la instalacion desde el repositorio de kubernetes y arrancar un plano de control minimo con la herramienta [kubeadm](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/), para Mac OS y Windows se puede utilizar docker for desktop aunque para windows se tienen que ejecutar el contenido de los script ya que son bash (.sh)



PARA DESPLEGAR MODULOS CROSS
* Linux y Mac OS: Dentro de directorio Componentes_core/kubernetes ejecutar: **deploy**
* Windows: Ejectuar contenido dentro de archivo

PARA DESPLEGAR MICROSERVICIO DE PRUEBA
1. Instalar modulo de dependencias comun en directorio: Modulos/cima-comun: **mvn install**
2. Linux y Mac OS: Dentro de directorio de modulo Modulos/pocws ejecutar: **build**
3. Windows: Ejectuar contenido dentro de archivo

Una vez instalado el cluster y desplegados los componentes, es necesario importar el certificado publico en el navegador que se encuentra en el archivo **ca.pem** en el directorio Componentes_core/kubernetes/traefik/tls. Para conexion segura ssl

**Importante:** Para Mac OS y Windows, en el caso de Docker For Desktop es necesario ingresar los directorios compartidos para el caso de los volumenes persistentes, tambien se puede utilizar [Docker Toolbox](https://docs.docker.com/docker-for-mac/docker-toolbox/) o [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/). Cabe mencionar que este tipo de soluciones son para fines de desarrollo y no se supone que sean utilizadas para entornos productivos.

**Nota:** quedan tambien pendientes de agregar microservicio de discovery y/o centralizador de api y ejemplo de cloud config para entornos.

**Changelog** 
* Se agrtega prometeo

