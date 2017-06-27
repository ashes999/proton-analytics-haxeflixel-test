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
		new AnalyticsClient("PTIY6d4512lvA//5Sdh0EJmLRbOf2h2L124e9fqlNaE=").endSession();
	}
}
