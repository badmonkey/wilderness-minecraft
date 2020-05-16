#priority -100
print("================ Staging 'beginning' ================");


mods.ItemStages.addItemStage("beginning", <gamestagebooks:metalworking>);

mods.ItemStages.stageModItems("beginning", "quark");
mods.ItemStages.stageModItems("beginning", "charm");
mods.ItemStages.stageModItems("beginning", "rustic");

mods.DimensionStages.addDimensionStage("beginning", 2);  // World Forest
mods.DimensionStages.addDimensionStage("beginning", 8);  // Dagobah
mods.DimensionStages.addDimensionStage("beginning", 20); // The Betweenlands

