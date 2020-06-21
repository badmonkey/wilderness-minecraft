//
// Iron related
//

val crudeironBlock = <primal:metalblock:0>;
val ironBlock = <minecraft:iron_block>;
val crudeIronIngot = <primal:crude_iron_ingot>;
val anvil = <minecraft:anvil:0>;
val crudeAnvil = <minecraft:anvil:1>;
val ingotAlum = <ore:ingotAluminum>;
val ironNugget = <ore:nuggetIron> | <ore:nuggetCrudeIron>;


// Change iron bars to metal bars
<minecraft:iron_bars>.displayName = "Metal Bars";


recipes.addShaped( <minecraft:iron_bars>
                 , [ [null, ironNugget, null]
                   , [null, ironNugget, null]
                   , [null, ironNugget, null] ]); 


// Add some additional metal recipes
recipes.addShaped( <minecraft:iron_bars> * 16
                 , [ [ingotAlum, ingotAlum, ingotAlum]
                   , [ingotAlum, ingotAlum, ingotAlum]
                   , [null,      null,      null] ]);                   

                   
//
// Anvils
//
recipes.addShaped( anvil
                 , [ [ironBlock,      ironBlock,      ironBlock]
                   , [null,           crudeIronIngot, null]
                   , [crudeIronIngot, crudeIronIngot, crudeIronIngot] ]);
                   
recipes.addShaped( crudeAnvil
                 , [ [crudeironBlock,         crudeironBlock,         crudeironBlock]
                   , [null,                   <minecraft:iron_ingot>, null]
                   , [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>] ]);

recipes.addShaped( crudeAnvil
                 , [ [crudeironBlock, crudeironBlock, crudeironBlock]
                   , [null,           crudeIronIngot, null]
                   , [crudeIronIngot, crudeIronIngot, crudeIronIngot] ]);                   
                   
                   