-----------------------------------
-- Area: Boneyard_Gully
--  NPC: _081 (Dark Miasma)
-----------------------------------
package.loaded["scripts/zones/Boneyard_Gully/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/bcnm");
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/zones/Boneyard_Gully/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
    if (TradeBCNM(player,player:getZoneID(),trade,npc)) then
        return;
    end

end;

function onTrigger(player,npc)

    if (EventTriggerBCNM(player,npc)) then
        return 1;
        else
        return 1;
    end

end;

function onEventUpdate(player,csid,option)
    -- printf("onUpdate CSID: %u",csid);
    -- printf("onUpdate RESULT: %u",option);

    if (EventUpdateBCNM(player,csid,option)) then
        return;
    end

end;

function onEventFinish(player,csid,option)
    -- printf("onFinish CSID: %u",csid);
    -- printf("onFinish RESULT: %u",option);
    if (EventFinishBCNM(player,csid,option)) then
        return;
    end

end;