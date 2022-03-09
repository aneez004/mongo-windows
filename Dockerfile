FROM mongo
COPY mongodbuser.ps1 .
CMD ["powershell.exe" "./mongodbuser.ps1"]