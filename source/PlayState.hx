package;

import flixel.FlxState;

import protonanalytics.AnalyticsClient;

class PlayState extends FlxState
{
	private var client = new AnalyticsClient("PTIY6d4512lvA//5Sdh0EJmLRbOf2h2L124e9fqlNaE=");

	override public function create():Void
	{
		super.create();
		client.startSession();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	override public function onFocus() : Void
  	{
		
	}

	override public function onFocusLost() : Void
  	{
		client.endSession();
	}

	override public function destroy():Void
	{
		client.endSession();
		trace("DIE!");		
		super.destroy();
	}
}
