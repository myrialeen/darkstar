-----------------------------------
-- Area: Balga's Dais
--  MOB: Black Dragon
-- Mission 2-3 BCNM Fight
-----------------------------------
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(BLACK_DRAGON_SLAYER);
end;