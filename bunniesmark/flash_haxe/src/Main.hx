package ;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.Lib;
import flash.display.StageAlign;
import flash.display.StageScaleMode;

/**
 * ...
 * @author Adam H
 */

class Main extends Sprite
{
	public function new()
	{
		super();
		trace("hello bunnies");
		
		addChild(new TestBlitted());		
		//addChild(new TestDisplayList());
		
		addChild(new FPS());		
	}

	
	
	
	
	
	
	
	
	
	
	static function main() 
	{
		Lib.current.stage.align 	= StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
		Lib.current.stage.addChild(new Main());
	}
	
}