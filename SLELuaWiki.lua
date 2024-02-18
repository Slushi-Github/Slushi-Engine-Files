--[[
Este es el documento de todas las funciones Lua existentes dentro de Slushi Engine, todo por mi, Slushi.

VERSION DEL DOCUMENTO = v1.3.0 -- 17/2/2024

[LOG:
null.
]

[HECHO EN BASE A:
VERSION DE PE: 0.7.3h -- VERSION DE SLE: 0.1.9 -- VERSION DE SCE: 0.1.4]
]]--

--[[
Estos avisos estaran al final de cada funcion Lua o incluso variable, incidan la compatiblidad y estado de la funcion
Lua dependiendiendo de ciertos casos:
[SCE_NULL = No necesario estar en SC Engine]
[<SLE_VER = Funcion existente o compatible con versiones anteriores de Slushi Engine (0.0.5, 0.0.4)]
[>SLE_VER = Compatible con versiones nuevas de Slushi Engine (0.0.8...)]
[<>SLE_VER = Compatible con versiones nuevas y anteriores de Slushi Engine con pocos cambios (0.0.8... o 0.0.5...)]
[PE_ERROR = Funcion existente, pero rota por Psych Engine 0.7.1h]
[NO_RECOM = Funcion existente, pero no recomendada por estar rota o incompleta o ser inecesaria para la mayoria]
[WARNING = Funcion existente, pero no recomendada porque podria ser incomoda para el jugador]
]]--

--[[
Todas, y digo TODAS, estas funciones que veran aca, se necesita que el modo developer este activado. -- YA NO! :3
]]--

-- FUNCIONES HARDCODEADAS DEL FNF: -----------------
function windowTrans(Trans, camToApply)
-- hace la ventana del juego Transparente.
-- trans = activa o desactiva la transparencia =  (true/false).
-- camToApply = coloca o no un fondo negro en la camara que gustes.
end -- [SCE_NULL -- <SLE_VER]

function WindowAlpha(value)
-- cambia el alpha de la ventana.
-- value = el alpha de la ventana.
end -- [>SLE_VER]

function doTweenWinAlpha(fromValue, toValue, duration)
-- cambia el alpha de la ventana pero con un tween.
-- fromValue = el valor inicial.
-- toValue: = el valor al que ira el alpha.
-- duration = tiempo del tween.
end -- [>SLE_VER]

function centerWindow()
-- centra la ventana del juego en la pantalla.
end -- [>SLE_VER]

function resetAllCPPFunctions()
-- Reinicia todas las funciones de Hxcpp de Windows.
end -- [>SLE_VER]

function getRAM()
-- obten el numero entero de la RAM del equipo.
end -- [>SLE_VER]

function alwaysOnTop(mode)
-- superpone la ventana del juego por encima de todo elemento de Windows.
-- mode = false o true, para activar o no la funcion.
end -- [>SLE_VER]

function hideTaskBar(hide)
-- oculta la barra de tareas de Windows.
-- hide = false o true, para activar o no la funcion.
end -- [>SLE_VER -- WARNING]

function setWallpaper(image)
-- oculta la barra de tareas de Windows.
-- image = el nombre de la imagen a poner, que debe estar en mods/images/wallpapers.
end -- [>SLE_VER -- WARNING]

function winScreenCapture(nameToSave)
-- Toma una captura de toda la pantalla del monitor
-- nameToSave = el nombre de la imagen a guardar en mods/images/winAssets.
end -- [>SLE_VER]

function getLanguage()
-- obten el idioma en el que se configuro el juego, para traducir textos y ese tipo de cosas.
end -- [<SLE_VER]

function winAlert(text, title)
-- crea una alerta en forma de ventana.
-- text = el texto que llevara el mensaje.
-- title = el titulo de la ventana.
end -- [<SLE_VER]

function winShake(value)
-- hace temblar la ventana.
-- value = valor de la intensidad del temblor.
end -- [<SLE_VER]

function DisableCloseButton(mode)
-- impide que el jugador cierre el juego usando la flechita de la ventana o Alt+F4.
-- mode = false o true, para activar o no la funcion.
-- dato: usala en las funciones onUpdate o onUpdatePost.
end -- [>SLE_VER]

function doTweenWinX(tag, value, duration, ease)
-- mueve la ventana en la cordenada X con un tween.
-- tag = el nombre que tendra ese tween.
-- value = valor en la cordenada X.
-- duration = tiempo del tween.
-- ease = tipo de ease. 
end -- [>SLE_VER]

function doTweenWinY(tag, value, duration, ease)
-- mueve la ventana en la cordenada Y con un tween.
-- tag = el nombre que tendra ese tween.
-- value = valor en la cordenada Y.
-- duration = tiempo del tween.
-- ease = tipo de ease. 
end -- [>SLE_VER]

function winTitle(text)
-- cambia el nombre de la ventana del juego.
-- text = el nuevo titulo de la ventana, el valor "text", si se le pone "default", 
-- (si estas en en una version de SLE inferior a la v0.1.0 es "titledef") se volvera al titulo original.
end -- [<>SLE_VER -- SCE_NULL -- NO_RECOM...?]

function setWinPosX(X)
-- mueve la ventana en la cordenada X.
-- X = la cordenada X
end -- [>SLE_VER]

function setWinPosY(Y)
-- mueve la ventana en la cordenada Y.
-- X = la cordenada Y
end -- [>SLE_VER]

function moveDesktopWindowsInX(X)
-- mueve los iconos del escritorio en la cordenada X.
-- X = la cordenada X
end -- [>SLE_VER]

function moveDesktopWindowsInY(Y)
-- mueve los iconos del escritorio en la cordenada Y.
-- X = la cordenada Y
end -- [>SLE_VER]

function moveDesktopWindowsInXY(XY)
-- mueve los iconos del escritorio en la cordenada X y Y.
-- XY = la cordenadas
end -- [>SLE_VER]

function doTweenDesktopWindows(mode, toValue, duration, ease)
-- mueve los iconos del escritorio con un tween.
-- mode = que valor se modificara (X o Y).
-- toValue = valor en la cordenada Y.
-- duration = tiempo del tween.
-- ease = tipo de ease. 
end -- [>SLE_VER]

function doTweenTaskBarAlpha(fromValue, toValue, duration, ease)
-- cambia el alpha de la barra de tareas de Windows con un tween.
-- fromValue = el valor inicial.
-- toValue: = el valor al que ira el alpha.
-- duration = tiempo del tween.
-- ease = tipo de ease. 
end -- [>SLE_VER]

function doTweenDesktopWindowsAlpha(fromValue, toValue, duration, ease)
-- cambia el alpha de los iconos del escritorio pero con un tween.
-- fromValue = el valor inicial.
-- toValue: = el valor al que ira el alpha.
-- duration = tiempo del tween.
-- ease = tipo de ease. 
end -- [>SLE_VER]

function getDesktopWindowsPos(mode)
-- obten el valor de la posiciones de los iconos del escritorio.
-- mode: X o Y
end -- [>SLE_VER]

function gameCrash(error, realCrash)
-- crashea el juego a proposito, usalo con cuidado
-- error = el texto del motivo del error, si se deja vacio, sera "Null Object Reference".
-- realCrash = crasheara verdaderamente el juego, y se cerrara (true/false).
end -- [<SLE_VER]

function moveSLELogoX(valueX, time, ease)
-- hacer un tween en X al todo el logo de Slushi Engine.
-- valueX = valor en la cordenada X.
-- time = tiempo del tween.
-- ease = tipo de ease.
-- dato: si el valueX es 0, volera a la posicion original.
end -- [>SLE_VER]

function moveSLELogoY(valueY, time, ease)
-- hacer un tween en X al todo el logo de Slushi Engine.
-- valueY = valor en la cordenada Y.
-- time = tiempo del tween.
-- ease = tipo de ease.
-- dato: si el valueY es 0, volera a la posicion original.
end -- [>SLE_VER]

function setBlackAlpha(alpha, time)
-- cambia el alpha del fondo que oscurece el logo de Slushi Engine.
-- valueY = valor en la cordenada Y.
-- time = tiempo del tween.
-- dato: si el alpha es "default", volera a al alpha original.
end -- [>SLE_VER]
------------------------------------------------------------------------------------------

-- FUNCIONES EN SCRIPTS LUA: -------------------------------------------------------------
-- esto, quiere decir que es una funcion de Lua ubicada en algun script Lua existente en mods/scripts.
-- nada, por los momeentos.
------------------------------------------------------------------------------------------
