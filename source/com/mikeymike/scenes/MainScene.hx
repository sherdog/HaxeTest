package com.mikeymike.scenes;
import com.mikeymike.interfaces.IScene;
import com.mikeymike.events.LoadSceneEvent;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.SimpleButton;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.Assets;

class MainScene extends AbstractScene implements IScene
{
	private var mWidth:Float;
	private var mHeight:Float;
	
	private var mMenuButton:SimpleButton;
	
	override public function onBeforeLoad():Void
	{
		addEventListener(Event.ENTER_FRAME, onTick);
		
		super.onBeforeLoad();
	}
	
	override public function onSceneReady():Void
	{
		super.onSceneReady();
		
		trace('Menu Scene Ready!');
		
		var outstate = new Bitmap(Assets.getBitmapData("assets/btnSpin_out.png"));
		var overstate = new Bitmap(Assets.getBitmapData("assets/btnSpin_over.png"));
		
		mMenuButton = new SimpleButton(outstate, overstate, overstate,overstate);
		mMenuButton.addEventListener(MouseEvent.CLICK, onMenuButtonClick);
		
		addChild(mMenuButton);
	}
	
	private function onMenuButtonClick(event:MouseEvent):Void
	{
		trace('Menu button clicked');
		stage.dispatchEvent(new LoadSceneEvent(LoadSceneEvent.LOAD_SCENE, "GameScene"));
		
	}
	
	private function onTick(event:Event):Void
	{
		
	}
}