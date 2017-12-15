-----------------------------------
-- Area: Xarcabard
--  NPC: qm4 (???)
-- Involved in Quests: Atop the Highest Mountains (for Boreal Hound)
-- !pos -21 -25 -490 112
-----------------------------------
package.loaded["scripts/zones/Xarcabard/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/zones/Xarcabard/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (OldSchoolG2 == false or GetMobByID(17236202):isDead()) then
        if (player:getQuestStatus(JEUNO,ATOP_THE_HIGHEST_MOUNTAINS) == QUEST_ACCEPTED and player:hasKeyItem(TRIANGULAR_FRIGICITE) == false) then
            player:addKeyItem(TRIANGULAR_FRIGICITE);
            player:messageSpecial(KEYITEM_OBTAINED, TRIANGULAR_FRIGICITE);
        else
            player:messageSpecial(ONLY_SHARDS);
        end
    else
        player:messageSpecial(ONLY_SHARDS);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;