package com.mikeymike.slots.base;

import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author MikeSheridan
 */
class SlotMachine extends Sprite 
{
	public function new() 
	{
		addEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		addEventListener(Event.REMOVED_FROM_STAGE, onStageRemoved);
		
		super();
	}
	
	private function onStageAdd(event:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		onReadyForDisplay();
	}
	
	private function onReadyForDisplay():Void
	{
		trace('Base SlotMachine Is Ready For Display');
	}
	
	private function onStageRemoved(event:Event):Void
	{
		removeEventListener(Event.REMOVED_FROM_STAGE, onStageRemoved);
		onReadyForDisposal();
	}
	
	private function onReadyForDisposal():Void
	{
		//Clean up anything that needs to be cleaned up.
	}
}