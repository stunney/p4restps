[CmdletBinding()]
param(
[Parameter(Mandatory=$true)]
[string] $changelistID,
[Parameter(Mandatory=$true)]
[string] $jobIDs,
[Parameter(Mandatory=$true)]
[string] $PostOrDelete
)



#TODO:  Split %2 based on ',' or ' ' or however it comes in from P4!
$jobIDs.Split(" ") | ForEach {
	$changelistID
    $id = $_
	$id
    Invoke-WebRequest -URI "http://localhost:25000/api/PerforceFixes/$id`?changelistID=$changelistID" -Method $PostOrDelete
}