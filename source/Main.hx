package;
import source.com.mikeymike.controllers.SceneController;
import openfl.display.Sprite;
import openfl.events.Event;
import com.mikeymike.events.LoadSceneEvent;

class Main extends Sprite {

	var sceneController:SceneController;
	
	public function new () {
		super ();
		
		//should be loading servives and shtuff. but meh.
		
		sceneController = new SceneController(this.stage);
		
		addEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		stage.addEventListener(LoadSceneEvent.LOAD_SCENE, handleLoadScene);
	}
	
	private function onStageAdd(event:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, onStageAdd);
		sceneController.loadScene('MainScene');
	}
	
	private function handleLoadScene(event:LoadSceneEvent):Void
	{
		trace('Load Scene Event was called');
		sceneController.loadScene(event.sceneName);
	}
}