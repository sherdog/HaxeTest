package com.mikeymike.slots.tripledoublediamond;

import com.mikeymike.slots.base.SlotMachine;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.Assets;

/**
 * ...
 * @author MikeSheridan
 */
class TripleDoubleDiamondSlotMachine extends SlotMachine 
{
	public function new()
	{
		super();
	}
	
	override public function onReadyForDisplay():Void
	{
		var bmpData:BitmapData = Assets.getBitmapData("assets/tripleDiamonSlotMachine.png");
		var background:Bitmap = new Bitmap(bmpData);
		
		addChild(background);
	}
	
}