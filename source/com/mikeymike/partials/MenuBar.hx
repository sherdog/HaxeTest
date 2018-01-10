package com.mikeymike.partials;

import openfl.display.Sprite;
import openfl.events.Event;
/**
 * ...
 * @author MikeSheridan
 */
class MenuBar extends Sprite 
{
	private var mBackground:Sprite;
	
	public function new() 
	{
		super();
		addEventListener(Event.ADDED_TO_STAGE, onStageAdd);
	}
		
	private function onStageAdd(event:Event):Void
	{
		trace('Menu Bar Loaded');
		
		removeEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		
		mBackground = new Sprite();
		mBackground.graphics.beginFill(0xFF0000, 1.0);
		mBackground.graphics.drawRect(0, 0, stage.stageWidth, 50);
		mBackground.graphics.endFill();
		
		addChild(mBackground);
	}
}