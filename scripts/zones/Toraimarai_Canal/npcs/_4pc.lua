-----------------------------------
-- Area: Toraimarai Canal
--  NPC: Marble Door
-- Involved In Windurst Mission 7-1
-- !pos 132 12 -19 169
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/globals/settings");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if player:getCurrentMission(WINDURST) == THE_SIXTH_MINISTRY or player:hasCompletedMission(WINDURST,THE_SIXTH_MINISTRY) then
        if (GetMobByID(17469666):isDead() and GetMobByID(17469667):isDead() and GetMobByID(17469668):isDead() and GetMobByID(17469669):isDead()) then
            -- all four hinge oils are dead
            player:startEvent(70,0,0,0,2);
        else
            -- at least one hinge oil is alive
            player:startEvent(70,0,0,0,1);
        end
    else
        player:startEvent(70);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;