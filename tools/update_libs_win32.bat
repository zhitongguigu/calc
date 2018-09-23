set DEP_SOURCE=..\dep
set EXT_SOURCE=..\external
set TARGET=..\build\win32\bin

if exist %TARGET%\Release (
    del %TARGET%\Release\*.dll
    xcopy %DEP_SOURCE%\opencv\lib\win32\release\*.dll %TARGET%\Release /q
    xcopy %DEP_SOURCE%\opengl\glew\lib\win32\release\*.dll %TARGET%\Release /q
    xcopy %DEP_SOURCE%\opengl\freeglut\lib\win32\release\*.dll %TARGET%\Release /q
    xcopy %DEP_SOURCE%\qt5\lib\win32\release\* %TARGET%\Release /q /s /i /Y
    xcopy %DEP_SOURCE%\tbb\lib\win32\release\tbb.dll %TARGET%\Release  /q
    xcopy %EXT_SOURCE%\ue\lib\win32\PersonifyMickey.dll %TARGET%\Release /q
    )

if exist %TARGET%\Debug (
    del %TARGET%\Debug\*.dll
    xcopy %DEP_SOURCE%\opencv\lib\win32\debug\*.dll %TARGET%\Debug /q
    xcopy %DEP_SOURCE%\opengl\glew\lib\win32\debug\*.dll %TARGET%\Debug /q
    xcopy %DEP_SOURCE%\opengl\freeglut\lib\win32\debug\*.dll %TARGET%\Debug /q
    xcopy %DEP_SOURCE%\qt5\lib\win32\debug\* %TARGET%\Debug /q /s /i /Y
    xcopy %DEP_SOURCE%\tbb\lib\win32\debug\tbb_debug.dll %TARGET%\Debug  /q
    xcopy %EXT_SOURCE%\ue\lib\win32\PersonifyMickey.dll %TARGET%\Debug  /q
    xcopy %EXT_SOURCE%\ue\lib\win32\tbb_debug.dll %TARGET%\Debug  /q
    )
