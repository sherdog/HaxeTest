package com.mikeymike.slots.base;

import openfl.display.DisplayObject;
import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author MikeSheridan
 */
class SlotSymbol extends Sprite 
{
	private var mOutState:DisplayObject;
	private var mHighlightedState:DisplayObject;
	private var mAnimatedState:DisplayObject;

	public function new(outState:DisplayObject, highlightedState:DisplayObject = null, animationState:DisplayObject = null) 
	{
		super();
		mOutState = outState;
		mHighlightedState = highlightedState;
		mAnimatedState = animationState;
		
		addEventListener(Event.ADDED_TO_STAGE, onStageAdd);
	}
	
	private function onStageAdd(event:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		onReadyForDisplay();
	}
	
	private function onReadyForDisplay():Void
	{
		addChild(mOutState);
	}
}