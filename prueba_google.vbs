Dim broswer
Set broswer = Description.Create()
broswer("micclass").value = "Browser"
broswer("creationtime").value = 0
broswer("index").value = 0

SystemUtil.Run "iexplore.exe", "https://www.google.com.mx/"

' Esperar a que el navegador se abra completamente
broswer.WaitProperty "readyState", "complete", 10000

' Realizar la búsqueda
Browser("micclass:=Browser").Page("micclass:=Page").WebEdit("micclass:=Edit").Set "hola mundo"
Browser("micclass:=Browser").Page("micclass:=Page").WebButton("micclass:=Button", "name:=Buscar").Click

' Cerrar el navegador
Browser("micclass:=Browser").Close
