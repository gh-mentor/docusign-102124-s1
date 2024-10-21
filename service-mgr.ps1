# This PowerShell script is used to manage services on a remote computer.

# Steps:
# Prompt the user for a service name and computer name, then check if the service is running on the specified computer.
# If the service is not running, it will start the service.
# If the service is already running, it will display a message indicating that the service is already running.


# Prompt the user for the service name and computer name
$serviceName = Read-Host "Enter the service name"
$computerName = Read-Host "Enter the computer name"

# Check if the service is running
$service = Get-Service -Name $serviceName -ComputerName $computerName
if ($service.Status -ne 'Running') {
    # Start the service if it is not running
    Start-Service -Name $serviceName -ComputerName $computerName
    Write-Output "Service $serviceName started on $computerName"
} else {
    Write-Output "Service $serviceName is already running on $computerName"
}