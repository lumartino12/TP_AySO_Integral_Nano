# UTN-FRA_SO_TP-Integral


## Descripción:
> El siguiente TP tiene como finalidad recrear un equipo de trabajo. </br>
> Se encontrarán y deberán resolver los diferentes inconvenientes que surjan en el camino.

- [ ] Funciones.
  - (R1) Líder:
  - (R2) Responsable de Arquitectura:
  - (R3) Responsable de Automatización Nivel 1:
  - (R4) Responsable de Automatización Nivel 2:
  - (R5) Responsable de Microservicios:
  - (R6) Responsable de Testing / Documentacion:
  
## Responsabilidades
- [ ] (R1) - Líder:
  - Dueño de la rama Master.
  - Acepta pull requests.
  - Realiza merges.
  - Responsable de producción.
  - Colabora con los distintos desarrollos
  - Media en conflictos entre miembros del equipo.

- [ ] (R2) - Arquitectura:
  - Solo pushea contra dev_R2
  - Definición del hardware.
  - Scriptear la instalacion de todos los programas necesarios para el desarrollo del TP.
  - Estructura de discos / FS.
  - Colabora con los distintos desarrollos

- [ ] (R3) - Automatización Nivel 1:
  - Solo pushea contra dev_R3
  - Script Creación de usuarios.
  - Script Monitoreo web.
  - Documenta los Script  realizados.
  - Colabora con los distintos desarrollos

- [ ] (R4) - Automatización Nivel 2:
  - Solo pushea contra dev_R4
  - Desarrollo de Playbooks de Ansible.
  - Desarrolla Roles de Ansible.
  - Colabora con los distintos desarrollos

- [ ] (R5) - Microservicios:
  - Solo pushea contra dev_R5
  - Desarrollo de imágenes Docker / docker-compose.
  - Publicacion de la imagen en dockerhub
  - Responsable de la ejecución de las imágenes.
  - Documenta procesos de creación y despliegue de imágenes Docker.
  - Colabora con los distintos desarrollos

- [ ] (R6) - Testing / Documentación:
  - Solo pushea contra dev_R6
  - Generación y verificación de issues.
  - Desarrolla Playbook de testing unitarios dentro de los Roles de Ansible.
  - Prueba y Verifica las distintas soluciones desarrolladas
    - Las mismas deben ser idempotentes.
  - Colabora con los distintos desarrollos






## Tareas: 
- [ ]   Preparacion del Repositorio de Git
  - Responsable: (R1) Lider
  - Tareas: Push contra master / Aceptar pull request
    - Seguridad: Rama Master -> Solo el lider puede pushear
    - Seguridad: Rama dev -> El esto de los integrantes pueden pushear
    - Seguridad: Cuando se requiera subir un cambio de dev a Master, El responsable de esa funcionalidad debe realizar un pull request al lider para que se realice el merge contra la rama master.
    - Metodologia:  Trunk-based development (TBD).
    - Cantidad de ramas aceptadas: master , dev

- [ ]   Preparacion de la VM
  - Responsable: (R2) Arquitectura
  - Tareas:
    - Generacion de vagrantfile
    - Aprovisionamiento de las VM
    - Configuraciones de las VM
    - Nombres VM: 
      - VM1-Grupo-xxxx
      - VM2-Grupo-xxxx

- [ ]   LVM
  - Responsable: Arquitectura
  - Tareas: 
    - Indicar al responsable de la preparacion de la vm Discos a incorporar.
    - Scriptear: Las tareas de particionamiento, creacion de PV, VG, LV, formateo y montajes persistentes segun el punto de LVM.
    - Documentar: Las tareas de particionamiento, creacion de PV, VG, LV, formateo y montajes persistentes segun el punto de LVM.
    - Debe ser idempotente.

- [ ]   Bash-Scripting
  - Responsable: Automatizacion Nivel 1
  - Tareas: 
    - Scriptear: Las tareas pedidas en el punto de Bash-Scripting 
    - Documentar: Las tareas pedidas en el punto de Bash-Scripting 
    - Ejecutar y validar el correcto funcionamiento.

- [ ]   Ansible
  - Responsable: Automatizacion Nivel 2
  - Tareas: 
    - Desarrollar Playbook Ansible: Las tareas pedidas en el punto de Ansible.
    - Desarrollar Roles Ansible pedidos en el punto de Ansible.
    - Documentar: Las tareas pedidas en el punto de Ansible.


- [ ]   Docker
  - Responsable: Microservicios.
  - Tareas: 
    - Desarrollar dockerfile
    - Desarrollar imagen 
    - Documentar: Las tareas pedidas en el punto de Docker.
    - Generar docker-compose
    - Pushear la imagen en la registry / Dar soporte a los demas integrantes en esta tarea
    - Verificar el correcto funcionamiento


- [ ] Verificaciones / Testing
  - Responsable: Testing/Documentacion
  - Tareas:
    - Ejecutar / Testear los diversos desarrollos de los demas integrantes.
    - Documentar la ejecucion, pruebas y bugs Encontrados. (crear issues, wiki )
    - Desarrolla Playbook de testing unitarios dentro de los Roles de Ansible.
    - Realizar un Script-Master.sh que ejecute todas las tares.
    - Realizar un check.sh que valide el correcto funcionamiento de todos los desarrollos.
    