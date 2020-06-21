//
// Left/Right-click actions
//
import crafttweaker.events.IEventManager;
import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.PlayerOpenContainerEvent;


events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {        
    if (event.block.definition.id == "minecraft:furnace" && !event.player.hasGameStage("advfurnace")) {     
        if (event.world.isRemote()) {
            event.player.sendMessage("Ow! Ow! Hot! You are not ready for the furnace.");
        }
        event.useBlock = "DENY";
        event.cancellationResult = "SUCCESS";
        event.cancel();
    }
});




// bed, diamond, end-city, google_marker, nether_portal, pickaxe, red_x_large, red_x_small
// scroll, skull, sword, tomb, tower, village
// obelisk, shrine, wizard_tower
// signpost, waypoint, sword2, banner, playertown, playertown2
/*
events.onPlayerInteract(function(event as PlayerInteractEvent) {        
    if (<antiqueatlas:antique_atlas:*>.matches(event.player.currentItem))
    {            
        var atlasID as int;        
        var x as double;
        var z as double;         
                                                     
        if (!event.world.isRemote())
        {
            atlasID = event.player.currentItem.metadata;                
            x = event.player.x;
            z = event.player.z;
            
                                                                            
                                                                           
            if ((<minecraft:mob_spawner>.asBlock()) in (event.block))
            {                    
                    mods.AAMarkerAPI.putMarker(event.world, false, atlasID, "skull", event.block.displayName , x, z);                     
                    event.cancel();
            }        
                     
            if ((<minecraft:diamond_ore>.asBlock()) in (event.block))
            {                    
                    mods.AAMarkerAPI.putMarker(event.world, false, atlasID, "diamond", event.block.displayName , x, z);                     
                    event.cancel();
            }                             

        }
    }
});
*/