#priority -103
print("================ Staging 'industry' ================");


mods.ItemStages.addItemStage("industry", <gamestagebooks:advtech>);

scripts.staging.stageWholeMod("industry", "immersiveengineering");
scripts.staging.stageWholeMod("industry", "immersivepetroleum");
scripts.staging.stageWholeMod("industry", "needtobreathe");
scripts.staging.stageWholeMod("industry", "kuarry");
scripts.staging.stageWholeMod("industry", "survivalsystems");

scripts.staging.stageWholeMod("advtech", "modularmachinery");
scripts.staging.stageWholeMod("advtech", "deepresonance");
scripts.staging.stageWholeMod("advtech", "woot");

mods.DimensionStages.addDimensionStage("industry", 1);   // TheEnd
mods.DimensionStages.addDimensionStage("industry", 5);   // TheDefiled
mods.DimensionStages.addDimensionStage("industry", 6);   // TheVoid
mods.DimensionStages.addDimensionStage("industry", 9);   // TheForgotten


scripts.staging.moveToStageNonCrafting("beginning", <immersiveengineering:ore:*>);
