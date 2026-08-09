# Build script cho Windows (PowerShell)
# Yêu cầu: đã cài TeX Live / MiKTeX và latexmk

latexmk -pdf main.tex

Write-Host "Build hoàn tất. File PDF nằm trong thư mục build/"
