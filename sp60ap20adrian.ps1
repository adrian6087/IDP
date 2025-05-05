#Definimos el umbral de memoria
$umbralMemoria = 200

#Convertimos los 200 MB a bytes
$umbralMemoriaBytes = $umbralMemoria * 1MB

#Obtenemos todos los procesos en ejecución
Get-Process | ForEach-Object {
    #Comprobar si el proceso excede el umbral de memoria
    if ($_.WorkingSet -gt $umbralMemoriaBytes) {
        #Mostrar información del proceso que será finalizado
        Write-Host "El proceso '$($.Name)' está usando $([math]::round($.WorkingSet / 1MB, 2)) MB de memoria."
        Write-Host "El proceso superó el umbral de $umbralMemoria MB. Finalizándolo..."
        #Finalizamos el proceso forzosamente
        Stop-Process -Id $_.Id -Force}
    }
