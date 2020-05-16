import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;


function mob_pool(mobname as string, poolname as string) as LootPool {
    val mob = LootTables.getTable(mobname);
    return mob.getPool(poolname);
}

////////////////

val goblin_drops = mob_pool("primitivemobs:entities/goblin", "goblin_drops");

goblin_drops.removeEntry("minecraft:iron_ingot");
goblin_drops.addItemEntry(<primal:crude_iron_nugget>, 3, "primal:crude_iron_nugget");
goblin_drops.addItemEntry(<primal:ore_cluster_bog_iron>, 1, "primal:ore_cluster_bog_iron");

////////////////

val harpy_rare_drops = mob_pool("primitivemobs:entities/harpy", "harpy_rare_drops");

harpy_rare_drops.removeEntry("minecraft:gold_ingot");
harpy_rare_drops.addItemEntry(<minecraft:gold_nugget>, 1, "minecraft:gold_nugget");