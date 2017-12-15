-----------------------------------
-- Area: Throne Room
--  MOB: Zeidpart2
-- Mission 9-2 BASTOK BCNM Fight
-----------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobRoam(mob)
    mob:setLocalVar("2hourtime",math.random(20,50));
end;

function onMobFight(mob, target)

    local zeid = mob:getID();
    local shadow1 = zeid+1;
    local shadow2 = zeid+2;

    if (mob:getHPP() <= mob:getLocalVar("2hourtime")) then
        if (mob:getLocalVar("2hour") == 0) then
            mob:useMobAbility(695);
            mob:setLocalVar("2hour",1);
        end
    elseif (mob:getHPP() <= 77) then
        if (mob:getTP() >= 1000) then
            if ((GetMobAction(shadow1) and GetMobAction(shadow2)) == 0) then
                mob:useMobAbility(984);
            end
        end
    end
end;

function onMobDeath(mob, player, isKiller)
    mob:setLocalVar("2hour",0);
    mob:setLocalVar("2hourtime",0);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
