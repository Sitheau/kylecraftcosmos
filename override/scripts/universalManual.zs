import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var universalManual = <akashictome:tome>.withTag(
    {
        "akashictome:is_morphing": 1 as byte,
        "akashictome:data": {
            tconstruct: {
                id: "tconstruct:book",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "tconstruct"
                },
                Damage: 0 as short
            }
        }
    }
);

universalManual.addTooltip("A manual containing all other in-game manuals.");

recipes.addShapeless("universalManual", universalManual, [<minecraft:dirt>]);
mods.jei.JEI.addItem(universalManual);
mods.initialinventory.InvHandler.addStartingItem(universalManual);
