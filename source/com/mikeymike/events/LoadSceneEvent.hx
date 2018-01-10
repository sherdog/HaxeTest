package com.mikeymike.events;

import openfl.events.Event;

/**
 * ...
 * @author MikeSheridan
 */
class LoadSceneEvent extends Event 
{
	public static inline var LOAD_SCENE:String = "LoadSceneEvent";
	
	public var sceneName:String;
	
	public function new(type:String, scene:String, bubbles:Bool=false, cancelable:Bool=false) 
	{
		super(type, bubbles, cancelable);
		sceneName = scene;
	}
	
	override public function clone():Event
    {
        return new LoadSceneEvent(type, sceneName, bubbles, cancelable);
    }
}