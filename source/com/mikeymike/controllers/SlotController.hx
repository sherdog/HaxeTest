package com.mikeymike.controllers;
import com.mikeymike.slots.base.SlotMachine;
import haxe.ds.StringMap;
import openfl.display.DisplayObject;
import openfl.display.DisplayObjectContainer;
import openfl.display.Stage;
import com.mikeymike.slots.tripledoublediamond.TripleDoubleDiamondSlotMachine;

/**
 * ...
 * @author MikeSheridan
 */
class SlotController 
{
	
	private var mStage:DisplayObjectContainer;
	private var mSlots:Map<String, Class<SlotMachine>>;
	private var mCurrentSlot:SlotMachine;

	public function new(container:DisplayObjectContainer) 
	{
		mStage = container;
		mSlots = new Map<String, Class<SlotMachine>>();
		
		initSlotMap();
	}
	
	public function loadSlot(slotID:String):Void
	{
		trace("Load slot called for slot: " + mSlots[slotID]);
		
		if (mCurrentSlot != null)
		{
			mStage.removeChild(mCurrentSlot);
		}
		
		var tmpSlot = Type.createInstance(mSlots[slotID], []);
		mCurrentSlot = tmpSlot;
		
		mStage.addChild(tmpSlot);
	}
	
	private function getSlotName(slotID:String = ""):String
	{
		return "";
	}
	
	public function removeSlot():Void
	{
		
	}
	
	private function initSlotMap():Void
	{
		mSlots.set("TripleDoubleDiamond", TripleDoubleDiamondSlotMachine);
	}
	
}