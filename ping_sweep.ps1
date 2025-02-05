# Ping Sweep
param($net)

if (!$net){
    echo "Exemplo de uso: .\pingsweep.ps1 192.168.0"
} else {
    foreach ($ip in 1..254){
        try {
            $resp = ping -n 1 "$net.$ip" | Select-String "bytes=32"
            $resp.Line.Split(' ')[2] -replace ":",""
        } catch {}
	}
}