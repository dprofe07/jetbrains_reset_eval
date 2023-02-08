@echo off

for %%I in (WebStorm, IntelliJ, CLion, Rider, GoLand, PhpStorm, Resharper, PyCharm) do (
    for /d %%a in ("%USERPROFILE%\.%%I*") do (
        rd /s /q "%%a/config/eval"
        del /q "%%a\config\options\other.xml"
    )
    for /d %%a in ("%APPDATA%\JetBrains\%%I*") do ( 
        rmdir /s /q "%%a\eval"
    )
    reg delete "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\%%I" /f
)



reg delete "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\/Jet/Brains./User/Id/On/Machine" /f
