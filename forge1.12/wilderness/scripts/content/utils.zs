#loader contenttweaker
#priority 110
#modloaded tconstruct
//
// Helper functions for dealing with tinker materials.
//
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.tconstruct.MaterialBuilder;
//import mods.contenttweaker.conarm.ExtendedMaterialBuilder;


function makeBasicMaterial( name as string
                          , displayName as string
                          , color as string
                          , makeParts as bool
                          , moltenData as IData
                          , blockData as IData) {
    var colorVal = Color.fromHex(color);
    
    var material = MaterialSystem.getMaterialBuilder().setName(displayName).setColor(colorVal).build();
    
    if makeParts {
        material.registerParts(["ingot", "nugget"] as string[]);
    }
    
    var molten = material.registerPart("molten").getData();
    if !isNull(moltenData) {
        for key, value in moltenData.asMap() {
            molten.addDataValue(key, value);
        }
    }
    
    if !isNull(blockData) {
        var block = material.registerPart("block").getData();
        
        for key, value in blockData.asMap() {
            block.addDataValue(key, value);
        }
    }
    
    return material;
}

function tinkersToolLiquid( name as string
                          , displayName as string
                          , color as string
                          , liquid as ILiquidStack
                          , representative as IItemStack) as mods.contenttweaker.tconstruct.MaterialBuilder {
    var colorVal = Color.fromHex(color);
    
    var material = mods.contenttweaker.tconstruct.MaterialBuilder.create(name);
    //var material = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create(name);

    material.color = colorVal.getIntColor();
    material.craftable = false;
    material.castable = true;
    material.liquid = liquid;
    material.localizedName = displayName;
    
    if !isNull(representative) {
        material.representativeItem = representative;
        material.addItem(representative);
    }

    return material;
}

function tinkersToolMaterial( name as string
                            , displayName as string
                            , color as string
                            , representative as IItemStack) as mods.contenttweaker.tconstruct.MaterialBuilder {
    var colorVal = Color.fromHex(color);
    
    val material = mods.contenttweaker.tconstruct.MaterialBuilder.create(name);
    //var material = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create(name);
    
    material.color = colorVal.getIntColor();
    material.craftable = true;
    material.castable = false;
    material.localizedName = displayName;
    
    if !isNull(representative) {
        material.representativeItem = representative;
        material.addItem(representative);
    }
    
    return material;
}

function makeMoltenMaterial( name as string
                           , displayName as string
                           , color as string
                           , moltenData as IData
                           , liquid as ILiquidStack
                           , representative as IItemStack) as mods.contenttweaker.tconstruct.MaterialBuilder {
    var moltenMat = makeBasicMaterial(name, displayName, color, false, moltenData, null);

    var material = tinkersToolLiquid(name, displayName, color, liquid, representative);

    return material;
}
