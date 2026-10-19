$Destination = "\\NAS01\Backup"
Start-Transcript -Path journal.txt
$Jours = 30Get-ChildItem $Destination | Where-Object LastWriteTime -lt (Get-Date).AddDays(-$Jours) | Remove-Item
