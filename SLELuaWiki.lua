--[[
Este es el documento de todas las funciones Lua existentes dentro de Slushi Engine, todo por mi, Slushi

VERSION DEL DOCUMENTO = v1.0 -- 15/08/2023

[ECHO EN BASE A:
VERSION DE PE: 0.7.1h -- VERSION DE SLE: V.0.0.8 -- VERSION DE SCE: 0.1.2 BETA]
]]--


--[[
Estos avisos estaran al final de cada funcion Lua o incluso variable, incidan la compatiblidad y estado de la funcion
Lua dependiendiendo de ciertos casos:
[SCE_NULL = No necesario estar en SC Engine]
[<SLE_VER = Compatible con versiones anteriores de SLE (0.0.5, 0.0.4)]
[>SLE_VER = Compatible con versiones nuevas de SLE (0.0.8...)]
[PE_ERROR = Funcion existente, pero rota por Psych Engine 0.7.1h]
[NO_RECOM = Funcion existente, pero no recomendada por estar un poco rota o incompleta o ser inecesaria para la mayoria]
]]--

-- FUNCIONES RELACIONADAS CON LA VENTANA DEL FNF: ----------------------------------
function winTrans(Trans, Black)
-- hace la ventana del juego Transparente
-- trans = activa o desactiva la transparencia =  (true/false)
-- Black = coloca o no un fondo negro en CamGame = (true/false)
end -- [SCE_NULL -- <SLE_VER -- PE_ERROR]

function winFuncs(resizable, borderless, maxi, fullscreen)
-- funciones de la ventana del juego
-- resizable = permitir que el usuario redimenciome la ventana del juego = (true/false)
-- borderless = poner o quitar los bordes de la ventana (util para winTrans()) = (true/false)
-- maxi = maximiza la ventana del juego =  (true/false)
-- fullscreen = poner en pantalla completa el juego = (true/false)
end -- [<SLE_VER]

function winAlert(text, title)
-- crea una alerta en forma de ventana
-- text = el texto que llevara el mensaje
-- title = el titulo de la ventana
end -- [<SLE_VER]

function winShake(value)
-- hace temblar la pantalla
-- value = valor de la intensidad
end -- [<SLE_VER]

function doTweenWinX(value, duration, ease)
-- mueve la ventana en la cordenada X con un tween.
-- Esta al ser una funcion con el aviso [NO_RECOM], no me pondre a explicarlo
end -- [NO_RECOM]

function doTweenWinY(value, duration, ease)
-- mueve la ventana en la cordenada Y con un tween.
-- Esta al ser una funcion con el aviso [NO_RECOM], no me pondre a explicarlo
end -- [NO_RECOM]

function winTitle(text)
-- cambia el nombre de la ventana del juego
-- text = el nuevo titulo de la ventana
-- dato: si el valor "text", se le pone "titledef", se volvera al titulo original
end -- [<SLE_VER -- SCE_NULL -- PE_ERROR..?]

function winPos(X, Y)
-- mueve la ventana en la cordenada X y Y.
-- Esta al ser una funcion con el aviso [NO_RECOM], no me pondre a explicarlo
end -- [NO_RECOM]

function winDimX(Width)
-- redimenciona la ventana en lo ancho.
-- Esta al ser una funcion con el aviso [NO_RECOM], no me pondre a explicarlo
end -- [NO_RECOM]

function winDimY(Height)
-- redimenciona la ventana en lo alto.
-- Esta al ser una funcion con el aviso [NO_RECOM], no me pondre a explicarlo
end -- [NO_RECOM] 
-------------------------------------------------------------------------------------

-- COSAS... RARAS? ----------------------------------------------------------------------
function gameCrash(error, realCrash)
-- crashea el juego a proposito
-- error = el texto del motivo del error, si se deja vacio, sera "Null Object Reference"
-- realCrash = crasheara verdaderamente el juego, y se cerrara (true/false)
end -- [<SLE_VER]
------------------------------------------------------------------------------------------

-- FUNCIONES EN SCRIPTS LUA: -------------------------------------------------------------
function Shader3DX(valueX, time, ease)
-- hacer un tween en X al shader 3D.
-- valueX = valor en la cordenada X.
-- time = tiempo del tween
-- ease = tipo de ease
end -- [>SLE_VER]

function Shader3DY(valueY, time, ease)
-- hacer un tween en Y al shader 3D.
-- valueY = valor en la cordenada Y.
-- time = tiempo del tween.
-- ease = tipo de ease.
end -- [>SLE_VER]

function ACShader(value, time, ease)
-- hacer un tween al shader de Chromatic Abberation.
-- valueY = valor.
-- time = tiempo del tween.
-- ease = tipo de ease.
end -- [>SLE_VER -- NO_RECOM]

function moveSLELogoX(valueX, time, ease)
-- hacer un tween en X al todo el logo de Slushi Engine.
-- valueX = valor en la cordenada X.
-- time = tiempo del tween.
-- ease = tipo de ease.
-- dato: si el valueX es 0, volera a la posicion original
end -- [>SLE_VER]

function moveSLELogoY(valueY, time, ease)
-- hacer un tween en X al todo el logo de Slushi Engine.
-- valueY = valor en la cordenada Y.
-- time = tiempo del tween.
-- ease = tipo de ease.
-- dato: si el valueY es 0, volera a la posicion original
end -- [>SLE_VER]

function setBlackAlpha(alpha, time)
-- cambia el alpha del fondo que oscurece el logo de Slushi Engine.
-- valueY = valor en la cordenada Y.
-- time = tiempo del tween.
-- dato: si el alpha es "default", volera a al alpha original
end -- [>SLE_VER]
------------------------------------------------------------------------------------------

-- VARIABLES DE SCRIPTS LUA --------------------------------------------------------------
ShowSLELogo = (true/false) -- muestra o no el logo de Slushi Engine. -- [>SLE_VER]
ShowCamGame = (true/false) -- muestra o no la camGame del juego. -- [>SLE_VER]

forceShaders = (true/false) -- forzar o no los shaders. -- [>SLE_VER -- NO_RECOM]
Shader3D = (true/false) -- usar o no el shader 3D. -- [>SLE_VER -- NO_RECOM]
ACShader = (true/false) -- usar o no el shader de Chromatic Abberation. -- [>SLE_VER -- NO_RECOM]

------------------------------------------------------------------------------------------