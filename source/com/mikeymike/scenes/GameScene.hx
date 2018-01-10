package com.mikeymike.scenes;
import com.mikeymike.controllers.SlotController;
import com.mikeymike.interfaces.IScene;
import com.mikeymike.slots.tripledoublediamond.*;
import com.mikeymike.slots.SlotTypes;
import openfl.display.Sprite;

class GameScene extends AbstractScene implements IScene
{
	override public function onSceneReady():Void
	{
		trace("Game Scene On Scene Ready Called");
		super.onSceneReady();
		
		var slotContainer:Sprite = new Sprite();
		addChild(slotContainer);
		slotContainer.x = 0;
		slotContainer.y = 100;
		
		var slotController:SlotController = new SlotController(slotContainer);
		slotController.loadSlot(SlotTypes.SLOT_TRIPLE_DOUBLE_DIAMOND);
	}
}