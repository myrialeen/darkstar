-----------------------------------------
-- Spell: Carbuncle
-- Summons Carbuncle to fight by your side
-----------------------------------------
require("scripts/globals/summon");
require("scripts/globals/pets");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    if (not caster:canUsePet()) then
        return msgBasic.CANT_BE_USED_IN_AREA;
    elseif (caster:hasPet()) then
        return msgBasic.ALREADY_HAS_A_PET;
    else
        return 0;
    end
end;

function onSpellCast(caster,target,spell)
    caster:spawnPet(PET_CARBUNCLE);

    return 0;
end;
