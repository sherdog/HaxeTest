package source.com.mikeymike.controllers;

import openfl.display.DisplayObject;
import openfl.display.Stage;
import openfl.utils.Dictionary;

import com.mikeymike.scenes.*;

class SceneController
{
	//Could implement a scene loader with an actual loading screen.
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
		
		mCurrentScene = tmpClass;
		mStage.addChild(tmpClass);
	}
	
	/**
	 * Add new Scenes here for reference.
	 */
	private function initMap():Void
	{
		mScenes.set("MainScene", MainScene);
		mScenes.set("GameScene", GameScene);
	}
}
