package;
import source.com.mikeymike.controllers.SceneController;
import openfl.display.Sprite;
import openfl.display.Stage;

class Main extends Sprite {

	public function new () {
		super ();
		
		var sceneCotnroller:SceneController = new SceneController(this.stage);
		sceneCotnroller.loadScene('MainScene');
	}
}