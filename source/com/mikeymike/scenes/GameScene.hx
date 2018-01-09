package com.mikeymike.scenes;
import com.mikeymike.interfaces.IScene;

class GameScene extends AbstractScene implements IScene
{
	override public function onSceneReady():Void
	{
		trace("Game Scene On Scene Ready Called");
		super.onSceneReady();
	}
	
}