New-Item -ItemType directory -Force -Path C:\Users\m.riedlsperger\Desktop\img

Copy-Item -Path 'V:\Bildpuffer\*' -Destination 'C:\Users\m.riedlsperger\Desktop\img'

Get-ChildItem -Path 'V:\Artikelbilder\' -Recurse|
Where-Object {
  $_.LastWriteTime -gt [datetime]::Now.AddDays(-14)
}| Copy-Item -Destination 'C:\Users\m.riedlsperger\Desktop\img'

Compress-Archive -Path C:\Users\m.riedlsperger\Desktop\catalog.csv -DestinationPath C:\Users\m.riedlsperger\Desktop\catalog.zip
Compress-Archive -Path C:\Users\m.riedlsperger\Desktop\img -Update -DestinationPath C:\Users\m.riedlsperger\Desktop\catalog.zip

Move-Item -Path C:\Users\m.riedlsperger\Desktop\catalog.zip -Destination W:\catalog.zip