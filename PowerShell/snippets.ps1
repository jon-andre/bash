# Collection of PowerShells

# Search through all txt files in folder and subfolders for content
Get-ChildItem -Path .\foo\*.txt -Recurse | Select-String -Pattern "bar"
# Alternative notation
ls -r .\foo\*.txt | Select-String -Pattern "bar"

# Ghostscript for reducing PDF sizes. Should wrap in a PowerShell function
gswin64c -sDEVICE=pdfwrite -o file_output.pdf -dCompatibilityLevel='1.4' -dNOPAUSE -dQUIET -dBATCH  file.pdf