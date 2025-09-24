$cert = New-SelfSignedCertificate `
  -Subject "CN=My Code Signing Cert" `
  -Type CodeSigningCert `
  -KeyExportPolicy Exportable `
  -KeySpec Signature `
  -CertStoreLocation "Cert:\CurrentUser\My" `
  -NotAfter (Get-Date).AddYears(2)

$password = ConvertTo-SecureString -String "P@ssw0rd!" -Force -AsPlainText
$path = ".\MyCodeSigningCert.pfx"

Export-PfxCertificate -Cert $cert -FilePath $path -Password $password