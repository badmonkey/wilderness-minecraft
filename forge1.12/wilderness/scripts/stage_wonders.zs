#priority -102
print("================ Staging 'wonders' ================");


mods.ItemStages.addItemStage("wonders", <gamestagebooks:industry>);

scripts.staging.stageWholeMod("wonders", "iceandfire");
scripts.staging.stageWholeMod("wonders", "astralsorcery");
scripts.staging.stageWholeMod("wonders", "fossil");
scripts.staging.stageWholeMod("wonders", "ebwizardry");

scripts.staging.moveToStageNonCrafting("beginning", <fossil:cooked_egg>);
scripts.staging.moveToStageNonCrafting("beginning", <fossil:raw_chicken_soup>);
scripts.staging.moveToStageNonCrafting("beginning", <fossil:cooked_chicken_soup>);

scripts.staging.moveToStageNonCrafting("beginning", <astralsorcery:blockmarble:*>);


mods.DimensionStages.addDimensionStage("wonders", 3);    // Mesozoic