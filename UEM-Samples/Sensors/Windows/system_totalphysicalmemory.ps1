# Description: Returns Total Physical Memory in GB
# Execution Context: SYSTEM
# Execution Architecture: EITHER64OR32BIT
# Return Type: INTEGER

$totalphysicalmemory = (Get-WmiObject -Class win32_computersystem).TotalPhysicalMemory
$ram = [int]($totalphysicalmemory/1GB)
return $ram
