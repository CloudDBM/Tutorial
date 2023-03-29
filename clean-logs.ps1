$Path = "C:\Temp"
$Daysback = "-5"
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.Name -like '*.log' } | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item
