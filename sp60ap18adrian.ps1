Insertar la programa
param(
    [string]$programa
)

Comprobar si se ha introducido un parámetro, verificamos si el programa existe, ejecutamos el programa y si nos se encuentra ponemos mensajes de error.
if ($programa) {
    if (Test-Path $programa) {
        Write-Host "Ejecutando el programa: $programa"
        Start-Process $programa} 
        else {
            Write-Host "No se encontró el programa en la ruta especificada."}}
