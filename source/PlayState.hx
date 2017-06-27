package;

import flixel.FlxState;

import protonanalytics.AnalyticsClient;

class PlayState extends FlxState
{
	override public function create():Void
	{
		trace("CREATED!");
	}

	override public function onFocusLost():Void
	{
		trace("FOCUS!!!");
		PaClient.endSession();
	}
}
