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
		addEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		super();
	}
	
	private function onStageAdd(event:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		onSceneReady();
	}
	
	private function onSceneReady():Void
	{
		//Override in concrete class
	}
	
	private function onSceneRemoved():Void
	{
		
	}
}