include "scenario/scripts/misc.lua"
include "modules/ZtModArchive/ArluqTools/scripts/arluq.lua"

function transition (args)
    aq.try(
        function ()
            local subjectAnimal = resolveTable(args[1].value)
            if not aq.animal.getGender(subjectAnimal) then
                aq.animal.setGender(subjectAnimal, "_M")
                displayZooMessageTextWithZoom("The testosterone is taking effect on " .. aq.animal.getName(subjectAnimal) .. ".", 1, 30, subjectAnimal)
            else
                aq.animal.giveDisease(subjectAnimal, "DysphoriaFemme")
            end
        end
    )
end