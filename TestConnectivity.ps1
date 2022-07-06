 $outputcsv = "C:\Users\jimmyak\Downloads\APIM_FW_Test\TestResults.txt"
 $https     = "C:\Users\jimmyak\Downloads\APIM_FW_Test\HttpsDestinations.txt"
 $http      = "C:\Users\jimmyak\Downloads\APIM_FW_Test\HttpDestinations.txt"
 $sql       = "C:\Users\jimmyak\Downloads\APIM_FW_Test\UKSSQLEndpoint.txt"
 $kms       = "C:\Users\jimmyak\Downloads\APIM_FW_Test\KMS.txt"
 $httpPort  = "80"
 $httpsport = "443"
 $sqlport   = "1433"
 $kmsport   = "1688"
 Get-Content -Path $https  | Test-NetConnection -Port $httpsport -Informationlevel Detailed | Out-File $outputcsv -Encoding utf8 -Append
 Get-Content -Path $http | Test-NetConnection -Port $httpPort -Informationlevel Detailed | Out-File $outputcsv -Encoding utf8 -Append
 Get-Content -Path $kms | Test-NetConnection -Port $kmsport -Informationlevel Detailed | Out-File $outputcsv -Encoding utf8 -Append
 Get-Content -Path $sql | Test-NetConnection -Port $sqlport -Informationlevel Detailed | Out-File $outputcsv -Encoding utf8 -Append
 Out-GridView -Title "Testing Ports"
 