package;

import flixel.FlxGame;
import openfl.display.Sprite;
import openfl.display.Stage;
import openfl.events.Event;

class Main extends Sprite
{
	public function new()
	{
		super();

		PaClient.startSession();

		// Called on desktop targets but not HTML5, sadly.
		stage.addEventListener(Event.DEACTIVATE, endSession); 

		// Supposedly works after updating to OpenFL 5; part of the next HaxeFlixel release?
		// stage.application.onExit(function(exitCode)
		// {
		// 	client.endSession();
		// }); 
		
		addChild(new FlxGame(0, 0, PlayState, 1, 60, 60, true));
	}

	private function endSession(data:Dynamic):Void
	{
		trace("DEACTIVATE: " + data);
		PaClient.endSession();
	}
}
