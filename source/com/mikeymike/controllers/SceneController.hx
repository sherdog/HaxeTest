package source.com.mikeymike.controllers;

import openfl.display.DisplayObject;
import openfl.display.Stage;
import openfl.utils.Dictionary;

import com.mikeymike.scenes.*;

class SceneController
{
	private var mStage:Stage;
	private var mScenes:Map<String, Class<AbstractScene>>;

	private var mCurrentScene:AbstractScene;

	public function new(stage:Stage)
	{
		mScenes = new Map<String, Class<AbstractScene>>();
		mStage = stage;
		
		initMap();
	}

	public function loadScene(sceneName:String)
	{
		if (mCurrentScene != null)
		{
			mStage.removeChild(mCurrentScene);
		}
		
		var tmpClass = Type.createInstance(mScenes[sceneName], []);
		var tmpInstance = Type.createInstance(Type.resolveClass("com.mikeymike.scenes." + sceneName), []);
		
		mCurrentScene = tmpInstance;
		mStage.addChild(tmpInstance);
	}
	
	private function initMap():Void
	{
		mScenes.set("MainScene", MainScene);
		mScenes.set("GameScene", GameScene);
	}
}
