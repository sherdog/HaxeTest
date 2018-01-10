package com.mikeymike.scenes;
import com.mikeymike.interfaces.IScene;
import com.mikeymike.slots.tripledoublediamond.*;

class GameScene extends AbstractScene implements IScene
{
	override public function onSceneReady():Void
	{
		trace("Game Scene On Scene Ready Called");
		super.onSceneReady();
	
		
		var testSlot:TripleDoubleDiamondSlotMachine = new TripleDoubleDiamondSlotMachine();
		addChild(testSlot);
	}
}