# HTML Parser
$site = Read-Host "Digite o site: "

$siteOptions = Invoke-WebRequest -uri $site -Method Options

echo ""
echo "O servidor roda: "
$siteOptions.headers.server

echo ""
echo "O servidor aceita os metodos: "
$siteOptions.headers.allow

echo ""
echo "Links encontrados"
$siteReturn = Invoke-WebRequest -uri $site
$siteReturn.links.href | Select-String http