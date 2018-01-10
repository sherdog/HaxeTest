package com.mikeymike.scenes;
import openfl.display.Sprite;
import openfl.events.Event;
/**
 * ...
 * @author ...
 */
class AbstractScene extends Sprite
{

	public function new() 
	{
		super();
		onBeforeLoad();
	}
	
	public function onBeforeLoad():Void
	{
		addEventListener(Event.ADDED_TO_STAGE, onStageAdd);
	}
	
	private function onStageAdd(event:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		onSceneReady();
	}
	
	public function onSceneReady():Void
	{
		//Override in concrete class
	}
	
	public function onSceneRemoved():Void
	{
		
	}
}