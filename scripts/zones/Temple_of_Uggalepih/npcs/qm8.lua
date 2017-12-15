-----------------------------------
-- Area: Temple of Uggalepih (159)
--  NPC: qm8 (???)
-- Notes: Used to spawn Habetrot
-- !pos -57.434 -8.484 55.317 0
-----------------------------------
package.loaded["scripts/zones/Temple_of_Uggalepih/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Temple_of_Uggalepih/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

    -- Trade 12 La Theine Cabbages to pop Habetrot
    if(GetMobAction(17428811) == 0 and GetMobAction(17428812) == 0 and trade:hasItemQty(4366,12) and trade:getItemCount() == 12) then
        player:tradeComplete();
        -- 20% Chance to spawn Habetrot, else it's a Rumble Crawler
        local roll = math.random(1,5);
        if (roll < 2) then
            SpawnMob(17428811):updateClaim(player); -- Spawn Habetrot
        else
            SpawnMob(17428812):updateClaim(player); -- Spawn Rumble Crawler
        end
        npc:setStatus(STATUS_DISAPPEAR);
    end
end;

function onTrigger(player,npc)
    player:messageSpecial(BITS_OF_VEGETABLE);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
