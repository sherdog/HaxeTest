package com.mikeymike.scenes;
import com.mikeymike.interfaces.IScene;
import openfl.display.Graphics;
import openfl.display.Sprite;

class MainScene extends AbstractScene implements IScene
{
	override public function onSceneReady():Void
	{
		super.onSceneReady();
		
		
		var circle:Sprite = new Sprite();
		circle.graphics.beginFill(0xFF0000, 1);
		circle.graphics.drawCircle(200, 200,  100);
		circle.graphics.endFill();
		
		addChild(circle);
		
	}
}