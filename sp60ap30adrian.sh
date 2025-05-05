#!/bin/bash

#Linea para que introduzcan un valor de los dados
echo "Selecciona una opción:"
select estado in loaded not-found active inactive dead running;

#Inicio de bucle
do
    #Devuelve una lista con todos los servicios que cumpla la condición dada antes
    case $estado in (loaded|not-found|active|inactive|dead|running)
        systemctl list-units --type=service --state=$estado
                break;; *)

                #Linea en caso de que exista la entrada, se repetira hasta que sea valida
                echo "Opción no válida.";;
    esac
done
