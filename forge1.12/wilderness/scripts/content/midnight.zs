#loader contenttweaker
#modloaded tconstruct
#priority 100

import crafttweaker.item.IItemStack;
import mods.contenttweaker.tconstruct.MaterialBuilder;


//
// Tenebrum
//
var tenebrumMat = scripts.content.utils.makeMoltenMaterial( "tenebrum"
                                                          , "Tenebrum"
                                                          , "1f1b24"
                                                          , {temperature: "750"}
                                                          , <liquid:tenebrum>
                                                          , <item:midnight:tenebrum_ingot>);

tenebrumMat.addHeadMaterialStats(580, 3.85f, 4.3f, 2);
tenebrumMat.addHandleMaterialStats(1.15f, 0);
tenebrumMat.addExtraMaterialStats(200);
tenebrumMat.addBowMaterialStats(2.2f, 3.6f, 7.0f);
tenebrumMat.addProjectileMaterialStats();

tenebrumMat.register();


//
// Nagrilite
//
var nagriliteMat = scripts.content.utils.makeMoltenMaterial( "nagrilite"
                                                           , "Nagrilite"
                                                           , "180230"
                                                           , {temperature: "600"}
                                                           , <liquid:nagrilite>
                                                           , <item:midnight:nagrilite_ingot>);

nagriliteMat.addHeadMaterialStats(450, 3.5f, 3.0f, 2);
nagriliteMat.addHandleMaterialStats(1.2f, -25);
nagriliteMat.addExtraMaterialStats(110);
nagriliteMat.addBowMaterialStats(0.8f, 1.2f, 3.0f);
nagriliteMat.addProjectileMaterialStats();

nagriliteMat.register();


//
// Caliginum
//
var caliginum = scripts.content.utils.makeBasicMaterial( "caliginum"
                                                       , "Caliginum"
                                                       , "332C3B"
                                                       , true
                                                       , { temperature: "800", density: "-200"}
                                                         , { hardness: "2"
                                                         , resistance: "7"
                                                         , harvestLevel: "0"
                                                         , harvestTool: "pickaxe"});

var caliginumMat = scripts.content.utils.tinkersToolLiquid( "caliginum"
                                                          , "Caliginum"
                                                          , "332C3B"
                                                          , <liquid:caliginum>
                                                          , <item:contenttweaker:material_part:2>);
                                                  
caliginumMat.addHeadMaterialStats(880, 6.0f, 5.0f, 3);
caliginumMat.addHandleMaterialStats(0.7f, 56);
caliginumMat.addExtraMaterialStats(180);
caliginumMat.addBowMaterialStats(3.3f, 2.6f, 4.0f);
caliginumMat.addProjectileMaterialStats();

caliginumMat.register();


//
// Nightstone
//
var nightstone = scripts.content.utils.tinkersToolMaterial( "nightstone"
                                                          , "Nightstone"
                                                          , "20183b"
                                                          , <item:midnight:nightstone>);

nightstone.addHeadMaterialStats(220, 1.8f, 2.0f, 1);
nightstone.addHandleMaterialStats(0.6f, -20);
nightstone.addExtraMaterialStats(-30);
nightstone.addBowMaterialStats(5.0f, 2.0f, -3.0f);
nightstone.addProjectileMaterialStats();

nightstone.register();


//
// Ebonite
//
var ebony = scripts.content.utils.tinkersToolMaterial( "ebonite"
                                                     , "Ebonite"
                                                     , "120000"
                                                     , <item:midnight:ebonys>);

ebony.addItem(<item:midnight:ebonys_block>, 1, 1296);
ebony.addHeadMaterialStats(330, 2.3f, 3.3f, 2);
ebony.addHandleMaterialStats(0.5f, -10);
ebony.addExtraMaterialStats(130);
ebony.addBowMaterialStats(0.67f, 1.1f, -1.0f);
ebony.addProjectileMaterialStats();

ebony.register();


//
// Shadowroot
//
var shadowroot = scripts.content.utils.tinkersToolMaterial( "shadowroot"
                                                          , "Shadowroot"
                                                          , "16022c"
                                                          , <item:midnight:shadowroot_planks>);

shadowroot.addItem(<item:midnight:shadowroot_log>, 1, 576);

shadowroot.addHeadMaterialStats(100, 1.2f, 2.3f, 0);
shadowroot.addHandleMaterialStats(1.02f, 12);
shadowroot.addExtraMaterialStats(40);
shadowroot.addBowMaterialStats(0.7f, 0.8f, 2.0f);
shadowroot.addArrowShaftMaterialStats(1.1, 7);
shadowroot.addProjectileMaterialStats();

//shadowroot.addCoreMaterialStats(100, 2.3f);
//shadowroot.addPlatesMaterialStats(1.02f, 12, 2.1f);
//shadowroot.addTrimMaterialStats(30);

shadowroot.addMaterialTrait("blindrage", "head");
shadowroot.addMaterialTrait("blindfaith", "core");

shadowroot.register();

//head, handle, extra
//bow, bowstring, projectile, shaft, fletching
//core, plates, trim
//tungstensteelMat.addMaterialTrait("dense", "handle");
//tungstensteelMat.addMaterialTrait("insatiable", "extra");
//tungstensteelMat.addMaterialTrait("momentum", null);