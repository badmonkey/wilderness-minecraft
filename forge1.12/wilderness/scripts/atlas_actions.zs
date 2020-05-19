//
// Left/Right-click actions for atlas
//
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractEvent;
import mods.AAMarkerAPI;
import mods.AAMarker;

//
// bed, diamond, end-city, google_marker, nether_portal, pickaxe, red_x_large, red_x_small
// scroll, skull, sword, tomb, tower, village
// obelisk, shrine, wizard_tower
// signpost, waypoint, town
//

//Clicking (left- or right-) on a the specified blocks with an Antique Atlas item in-hand will add a marker to that atlas
//Clicking on a spawner will add a marker with the "skull" icon, and the diamond ore will use the "diamond" icon
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