# bdd-final-project
- Proyecto Final
- Bases de datos distribuidas.
- UNAM 2022-1.

## About
El proyecto crea una base distribuida por medio del manejador Oracle19c que consta
de 4 PDBs y dos sitios. La lista de PDB's es:
- **CKV_S1:**
- **CKV_S2:**
- **CRV_S1:**
- **CRV_S2:**

El ambiente en el que fue diseñado y ejecutado consta de dos nodos físicos
con Oracle Linux conectados por medio de una VPN (Hamachi VPN)

El proyecto consta de las siguientes carpetas
- **docs** Reportes acerca del diseño
- **models** Diseños lógicos y físicos en E/RStudio y lógicos en .png
- **src** Código fuente del proyecto, scripts sql para ejecución del proyecto.

## Dependencias
Para la correcta ejecución del proyecto es necesario:
  ###
    Oracle Linux
    Oracle 19c
    Hamachi VPN (Una red creada y provada)

Dependencias opcionales:
  ###
    SQLDeveloper

## Instalación
### Clonar el repositorio
  ###
    git clone https://github.com/MauRamos334455/bdd-final-project.git

### Abrir una terminal en la carpeta src/
  ###
    cd src/

### Realizar conexiones a los nodos por medio del archivo tnsnames.ora y listener.ora,
### más información en:
  ###
    https://drive.google.com/file/d/1agk-Q64giU5CfCfSH6ovR1fg-BnVNh6x/view?usp=sharing

### Ejecutar scripts de presentación en el orden indicado 
### (algunos scripts deben editarse si el nombre de las conexiones cambia)
  ###
    sqlplus /nolog
    @s-08-ilap-presentacion-1.sql
    @s-08-ilap-presentacion-2.sql
    @s-08-ilap-presentacion-3.sql

### Para verificar la transparencia de distribución en operaciones INSERT ejecutar en cada PDB:
  ###
    @s-08-ilap-presentacion-4.plb

### Para borrar la carga inicial ejecutar:
  ###
    @s-08-ilap-presentacion-5.sql

### Para verificar la transparencia de distribución en operaciones DELETE ejecutar en cada PDB:
  ###
    @s-08-ilap-presentacion-6.plb

## Desarrolladores
- Kennedy Villa Carolina
- Ramos Villaseñor César Mauricio
