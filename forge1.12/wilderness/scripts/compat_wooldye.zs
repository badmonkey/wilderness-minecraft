//
// compatibility recipes relating to wool and dyes
//
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val wool = <ore:blockWool>;

val woolDef = <minecraft:wool>.definition;      // wool     white:0 -> black:15
val bannerDef = <minecraft:banner>.definition;  // banners  black:0 -> white:15

val oreDyes = [                                 // ore:dye  black:0 -> white:15
    <ore:dyeBlack>,
    <ore:dyeRed>,
    <ore:dyeGreen>, 
    <ore:dyeBrown>, 
    <ore:dyeBlue>, 
    <ore:dyePurple>, 
    <ore:dyeCyan>, 
    <ore:dyeLightGray>, 
    <ore:dyeGray>, 
    <ore:dyePink>, 
    <ore:dyeLime>, 
    <ore:dyeYellow>, 
    <ore:dyeLightBlue>, 
    <ore:dyeMagenta>, 
    <ore:dyeOrange>, 
    <ore:dyeWhite>
] as IOreDictEntry[];
                   


//
// Sponges
//
recipes.addShaped( <minecraft:sponge> * 4
                 , [ [wool, wool,            wool]
                   , [wool, <ore:slimeball>, wool]
                   , [wool, wool,            wool] ]);    

     
//
// recipes by dye colour
//
for i, colorDye in oreDyes {
    val colorWool = woolDef.makeStack(15-i);
    val colorBanner = bannerDef.makeStack(i);

    // cheap banners
    recipes.remove(colorBanner);

    recipes.addShaped( colorBanner
                     , [ [null, wool,            null]
                       , [null, colorWool,       null]
                       , [null, <ore:stickWood>, null] ]);
                       
    recipes.addShaped( colorBanner
                     , [ [null, wool,            null]
                       , [null, wool,            colorDye]
                       , [null, <ore:stickWood>, null] ]);

    recipes.addShapeless(colorBanner, [<minecraft:banner:*>, colorDye]);
}                   


