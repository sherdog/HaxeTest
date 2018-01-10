package com.mikeymike.slots.base;

import haxe.ds.StringMap;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author MikeSheridan
 */
class SlotReeel extends Sprite 
{
	
	private var mSlotSymbolMap:StringMap<SlotSymbol>;
	
	public function new(slotSymbolMap:StringMap<SlotSymbol>) 
	{
		super();
		mSlotSymbolMap = slotSymbolMap;
		
		addEventListener(Event.ADDED_TO_STAGE, onStageAdd);
	}
	
	private function onStageAdd(event:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		
		onReadyForDisplay();
	}
	
	private function onReadyForDisplay();
	{
		var prevX:Float = 0.0;
		
		for (key in mSlotSymbolMap.keys())
		{
			var bmpData:BitmapData = Assets.getBitmapData("assets/" + mSlotSymbolMap[key]);
			var sym:Bitmap = new Bitmap(bmpData);
		
			addChild(sym);
		}
	}
}