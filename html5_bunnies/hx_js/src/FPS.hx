/**
 * ...
 * @author Philippe
 */

//import flash.events.Event;
//import flash.Lib;
//import flash.text.TextField;
//import flash.text.TextFormat;

class FPS
{
   private var timer		:Int;
   private var ms_prev		:Int;
   private var fps			:Int;

   public function new(inX:Float=10.0, inY:Float=10.0, inCol:Int = 0x000000)
   {
      super();
      x = inX;
      y = inY;
      selectable = false;
      defaultTextFormat = new TextFormat("Arial", 20, 0, true);
      text = "FPS:";
      textColor = inCol;
	  
	  timer = 0;
	  ms_prev = 0;
	  fps = 0;  
	  
      addEventListener(Event.ENTER_FRAME, onEnter);
   }

   public function onEnter(_)
   {
		timer = Lib.getTimer();
		if(timer - 1000 > ms_prev)
		{			
			if (visible)
			{
				text = "FPS:\n" + fps + "/" + Lib.current.stage.frameRate;
			}
			ms_prev = timer;
			fps = 0;
		}
		fps++;		
   }		
}
