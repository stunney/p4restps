[CmdletBinding()]
param(
[Parameter(Mandatory=$true)]
[string] $changelistID,
[Parameter(Mandatory=$true)]
[string] $jobIDs
)



#TODO:  Split %2 based on ',' or ' ' or however it comes in from P4!
$jobIDs.Split(" ") | ForEach {
    Invoke-WebRequest -URI "http://localhost:25000/api/PerforceFixes/$_?changelistID=$changelistID" -Method Delete
}