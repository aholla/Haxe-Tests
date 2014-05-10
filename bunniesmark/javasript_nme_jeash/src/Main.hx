package ;

import haxe.Log;
import nme.display.Sprite;
import nme.display.StageAlign;
import nme.display.StageScaleMode;
import nme.events.Event;
import nme.Lib;

/**
 * ...
 * @author Adam H
 */

class Main extends Sprite{
	


/*-------------------------------------------------
* PUBLIC CONSTRUCTOR
-------------------------------------------------*/

	public function new() 
	{
		super();
		trace("hello bunnies");
		
		addChild(new TestBlitted());
		//addChild(new TestDisplayList());
	}

/*-------------------------------------------------
* PUBLIC FUNCTIONS
-------------------------------------------------*/
		
		
		
/*-------------------------------------------------
* PRIVATE FUNCTIONS
-------------------------------------------------*/
	

		
/*-------------------------------------------------
* EVENT HANDLING
-------------------------------------------------*/
	

	
	
	
/*-------------------------------------------------
* HAXE INSERTION POINT
-------------------------------------------------*/
	static public function main() 
	{
		//#if(flash)
		//Log.trace = function(v, ?pos) { Lib.trace(pos.className + "::(" + pos.lineNumber + ") - " + v); }	
		//#elseif(js)
		//Log.trace = function(v, ?pos) { var c:Dynamic = untyped __js__('console');	c.log(pos.className + "::(" + pos.lineNumber + ") - " + v);	}	
		//#end
		
		Lib.current.stage.align		= StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
		
		Lib.current.addChild(new Main());	
		Lib.current.stage.addChild(new FPS());	
	}
	
}