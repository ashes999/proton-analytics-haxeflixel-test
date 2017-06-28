# HaxeFlixel Client for Proton Analytics

This client demonstrates how to use the Proton Analytics client in HaxeFlixel. It's primarily intended as an illustrative proof-of-concept.

Key notes:

- Create a persistent client so event retrying works if the server is unreachable temporarily (eg. `PaClient.hx`).
- Call `startSession` in `Main.hx` or in your first state
- `endSession` is automatically called every minute

If you care about knowing the exact end-session time:
  - For mobile: create a base/common `FlxState` that overrides `onFocusLost` and calls `endSession`. This tracks the client switching away from your app on mobile.
  - For desktop: add this code block to `Main.hx`: `stage.addEventListener(openfl.events.Event.DEACTIVATE, PaClient.endSession);`. 
  - HTML5 isn't possible at this time. When HaxeFlixel updates to OpenFL 5.x or newer, we should be able to use `stage.application.onExit(function(exitCode) { PaClient.endSession(); }` instead. For reference, see [this issue on GitHub](https://github.com/HaxeFlixel/flixel/issues/2081).