#Contar el total de servicios
$total_servicios = (Get-Service).Count

#Contar los servicios en estado Running
$servicios_activos = (Get-Service | Where-Object { $_.Status -eq 'Running' }).Count

#Contar los servicios en estado Stopped
$servicios_inactivos = (Get-Service | Where-Object { $_.Status -eq 'Stopped' }).Count

#Mostrar los resultados
Write-Host "Total: $total_servicios"
Write-Host "Running: $servicios_activos"
Write-Host "Stopped: $servicios_inactivos"
