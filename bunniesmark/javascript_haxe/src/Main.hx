package ;

import haxe.Log;
import js.Lib;
import js.Dom;

/**
 * ...
 * @author Adam H
 */

class Main 
{
	public function new()
	{
		//super();
		trace("hello bunnies");
		
		//addChild(new TestBlitted());		
		//addChild(new TestDisplayList());
		
		//addChild(new FPS());
		
		Lib.window.onload = onWindowLoaded;
	}
	
	private function onWindowLoaded(e:Dynamic) 
	{
		var bunnyTest = new BunnyTest();
	}
		
	static function main() 
	{
		//Lib.current.stage.align 	= StageAlign.TOP_LEFT;
		//Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
		
		Log.trace = function(v, ?pos) 
		{ 
			#if (js)
			var c:Dynamic = untyped __js__("console");
			c.log(pos.className + "::" + pos.methodName + "[" + pos.lineNumber + "] " + v);
			#end
		}		
		
		
		
		new Main();
	}
	
}





























