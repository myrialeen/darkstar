-----------------------------------
-- Area: Toraimarai Canal
--  NPC: ???
-- Involved In Quest: Wild Card
-- !pos 19 17 59 169
-----------------------------------
package.loaded["scripts/zones/Toraimarai_Canal/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/treasure");
require("scripts/globals/quests");
require("scripts/zones/Toraimarai_Canal/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

end;

function onTrigger(player,npc)
    if (player:getVar("rootProblem") == 2) then
        if (player:getVar("rootProblemQ1") == 2 and player:getVar("rootProblemQ2") == 2) then
            player:startEvent(48);
        end
    elseif (player:getVar("rootProblem") == 3) then
        player:startEvent(55);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);

end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if (csid == 48 and option ~= 0) then
        SpawnMob(17469516):updateClaim(player);
    end

end;


