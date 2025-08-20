#Editado por David el 19/08/2025

function Validar-Archivo {
    param([string] $Ruta)

    try {
        
        if (Test-Path $Ruta) {
            $contenido = Get-Content $Ruta -ErrorAction Stop
            return "Archivo encontrado y accesible: $Ruta"

        } else {
            throw "El archivo no existe."

        }
    }

    catch {
        return "Error: $_"

    }

    finally {
        Write-Host "Validación finalizada para: $Ruta" -ForegroundColor Cyan

    }
}

#Probar funcion

Validar-Archivo -Ruta "C:\archivo_inexistente.txt"

Validar-Archivo -Ruta "$env:USERPROFILE\Desktop\archivo.txt"