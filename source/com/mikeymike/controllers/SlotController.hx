package com.mikeymike.controllers;
import openfl.display.Stage;

/**
 * ...
 * @author MikeSheridan
 */
class SlotController 
{
	
	private var mStage:Stage;

	public function new(stage:Stage) 
	{
		mStage = stage;
	}
	
	
	public function loadSlot(slotID:Int = -1):Void
	{
		trace('Loading slot with id: ' + slotID + ' with name: ' + getSlotName(slotID));
	}
	
	private function getSlotName(slotID:Int = -1):String
	{
		return "Fuck you";
	}
	
	public function removeSlot():Void
	{
		
	}
	
}