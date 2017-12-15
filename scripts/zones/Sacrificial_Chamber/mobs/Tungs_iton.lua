-----------------------------------
-- Area: Sacrificial Chamber
--  MOB: Tungs'Iton
-- Zilart Mission 4 BCNM Fight
-----------------------------------

function onMobSpawn(mob)
end;

function onMobEngaged(mob,target)
    local mobid = mob:getID();

    for i=mobid-1,mobid+2 do
        GetMobByID(i):updateEnmity(target);
    end
end;

function onMobDeath(mob, player, isKiller)
    local elemental = mob:getID()+1;
    local kills = player:getVar("EVERYONES_GRUDGE_KILLS");

    if (kills < 480) then
        player:setVar("EVERYONES_GRUDGE_KILLS",kills + 1);
    end

    if (GetMobAction(elemental) ~= 0) then
        DespawnMob(elemental);
    end

end;