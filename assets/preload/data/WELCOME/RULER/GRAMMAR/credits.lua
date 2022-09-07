function onCreate()

makeLuaSprite('pad', 'credits', 230, -670)
scaleObject('pad', 0.7, 0.7)
setObjectCamera('pad', 'hud')
addLuaSprite('pad', true)
setScrollFactor('pad', 0, 0)

makeLuaText('name', songName, 450, 410, -260)
setObjectCamera('name', 'hud')
addLuaText('name')

makeLuaText('creator', 'Nanes Potatoes', 450, 410, -210)
setObjectCamera('creator', 'hud')
addLuaText('creator')

setObjectOrder('pad',1)
setObjectOrder('name',2)
setObjectOrder('creator',3)

end

function onCreatePost()
doTweenY('movein1','pad', -270, 2, 'quadInOut')
doTweenY('movein2','name', 130, 2, 'quadInOut')
doTweenY('movein3','creator', 190, 2, 'quadInOut')
runTimer('moveout', 3.7, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'moveout' then
doTweenY('movein1','pad', -670, 2, 'quadInOut')
doTweenY('movein2','name', -260, 2, 'quadInOut')
doTweenY('movein3','creator', -210, 2, 'quadInOut')
end
end

function onTweenCompleted(tag)
if tag == 'pad' then
removeLuaSprite('pad', true)
removeLuaText('creator', true)
removeLuaText('name', true)
end
end