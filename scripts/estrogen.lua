include "scenario/scripts/misc.lua"
include "modules/ZtModArchive/ArluqTools/scripts/arluq.lua"

function transition (args)
    aq.try(
        function ()
            local subjectAnimal = resolveTable(args[1].value)
            if aq.animal.getGender(subjectAnimal) then
                aq.animal.setGender(subjectAnimal, "_F")
                displayZooMessageTextWithZoom("The estrogen is taking effect on " .. aq.animal.getName(subjectAnimal) .. ".", 1, 30, subjectAnimal)
            end
        end
    )
end