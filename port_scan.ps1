# Port Scan
param($ip)

if (!$ip){
    echo "Port Scan - HELP"
    echo "Exemplo de uso: .\port_scan.ps1 192.168.0.1"
} else {
    $topPorts = 21,22,3306,80,443

    try {
        foreach ($porta in $topPorts){
            if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
                echo "Porta $porta aberta!"
            }
        }
    } catch {}
}