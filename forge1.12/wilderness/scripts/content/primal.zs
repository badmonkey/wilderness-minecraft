#loader contenttweaker
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.contenttweaker.MaterialSystem;


var slakedLimeMat = scripts.content.utils.makeMoltenMaterial( "slakedLime"
                                                            , "Slaked Lime"
                                                            , "E0FFE0"
                                                            , {temperature: "600"}
                                                            , <liquid:slakedLime>
                                                            , <item:primal:carbonate_stone:3>);

slakedLimeMat.register();
