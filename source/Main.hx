package;

import flixel.FlxGame;
import openfl.display.Sprite;
import openfl.display.Stage;
import protonanalytics.AnalyticsClient;
import openfl.events.Event;

class Main extends Sprite
{
	private var client = new AnalyticsClient("PTIY6d4512lvA//5Sdh0EJmLRbOf2h2L124e9fqlNaE=");

	public function new()
	{
		super();

		client.startSession();

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
		client.endSession();
	}
}
