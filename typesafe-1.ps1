function Add-Numbers {
    param (
        $a,
        $b
    )
    return $a + $b
}

# Calling the function with strings instead of numbers
$result = Add-Numbers "5" "10"
Write-Output $result





