set DEP_SOURCE=..\dep
set EXT_SOURCE=..\external
set TARGET=..\build\win64\bin

if exist %TARGET%\Release (
    del %TARGET%\Release\*.dll
    xcopy %DEP_SOURCE%\opencv\lib\win64\release\*.dll %TARGET%\Release /q
    xcopy %DEP_SOURCE%\opengl\glew\lib\win64\release\*.dll %TARGET%\Release /q
    xcopy %DEP_SOURCE%\opengl\freeglut\lib\win64\release\*.dll %TARGET%\Release /q
    xcopy %DEP_SOURCE%\qt5\lib\win64\release\* %TARGET%\Release /q /s /i /Y
    xcopy %DEP_SOURCE%\tbb\lib\win64\release\tbb.dll %TARGET%\Release  /q
    xcopy %EXT_SOURCE%\inuitive\lib\win64\Inuitive\CommonUtilities_v110.dll %TARGET%\Release  /q
    xcopy %EXT_SOURCE%\inuitive\lib\win64\Inuitive\InuStreams_v110.dll %TARGET%\Release  /q
    )

if exist %TARGET%\Debug (
    del %TARGET%\Debug\*.dll
    xcopy %DEP_SOURCE%\opencv\lib\win64\debug\*.dll %TARGET%\Debug /q
    xcopy %DEP_SOURCE%\opengl\glew\lib\win64\debug\*.dll %TARGET%\Debug /q
    xcopy %DEP_SOURCE%\opengl\freeglut\lib\win64\debug\*.dll %TARGET%\Debug /q
    xcopy %DEP_SOURCE%\qt5\lib\win64\debug\* %TARGET%\Debug /q /s /i /Y
    xcopy %DEP_SOURCE%\tbb\lib\win64\debug\tbb_debug.dll %TARGET%\Debug  /q
    xcopy %EXT_SOURCE%\inuitive\lib\win64\Inuitive\CommonUtilities_v110d.dll %TARGET%\Debug  /q
    xcopy %EXT_SOURCE%\inuitive\lib\win64\Inuitive\InuStreams_v110d.dll %TARGET%\Debug  /q
    )
