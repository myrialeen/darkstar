-----------------------------------
-- Area: Toraimarai Canal
--  NPC: Tome of Magic ( Needed for Mission )
-- Involved In Windurst Mission 7-1
-- @zone 169
-- !pos 142 13 -13 169 <many>
-----------------------------------
package.loaded["scripts/zones/Toraimarai_Canal/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Toraimarai_Canal/TextIDs");
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/missions");
-----------------------------------

function onTrade(player,npc,trade)

end;

function onTrigger(player,npc)

local CurrentMission = player:getCurrentMission(WINDURST);
local npcId = npc:getID();

    if (npcId == 17469832) then
            if (CurrentMission == THE_SIXTH_MINISTRY and player:getVar("MissionStatus") == 1) then
        player:startEvent(69);
        end
    elseif (npcId == 17469828) then
        player:startEvent(65);
    elseif (npcId == 17469829) then
        player:startEvent(66);
    elseif (npcId == 17469830) then
        player:startEvent(67);
    elseif (npcId == 17469831) then
        player:startEvent(68);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);

end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if (csid == 69) then
        player:setVar("MissionStatus",2);
    end
end;