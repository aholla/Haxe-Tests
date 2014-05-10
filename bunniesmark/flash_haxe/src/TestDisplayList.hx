/**
 * ...
 * @author Adam H
 */

package ;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Rectangle;
import flash.Lib;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;


class TestDisplayList extends Sprite
{
	private var numBunnies				:Int;
	private var incBunnies				:Int;
	
	private var bunnyArr				:Array<Bunny>;
	private var canvas					:Bitmap;
	private var canvasData				:BitmapData;
	private var rect					:Rectangle;
	private var counterTxt				:TextField;
		
/*-------------------------------------------------
* PUBLIC CONSTRUCTOR
-------------------------------------------------*/

	public function new() 
	{
		super();
		numBunnies = 1000;
		incBunnies = 100;
		init();
	}
		
/*-------------------------------------------------
* PUBLIC FUNCTIONS
-------------------------------------------------*/
		
		
		
/*-------------------------------------------------
* PRIVATE FUNCTIONS
-------------------------------------------------*/
		
	private function init():Void 
	{
		//canvasData = new BitmapData(800, 600);
		//canvas = new Bitmap(canvasData);
		//addChild(canvas);
		
		//rect = canvasData.rect;
		
		bunnyArr = [];
		
		for(i in 0...numBunnies)
		{
			var bunny:Bunny = new Bunny();
			bunnyArr.push(bunny);
			this.addChild(bunny.image);
		}
		
		createCounter();
		
		this.addEventListener(Event.ENTER_FRAME, onLoop);
	}	
	
	private function createCounter():Void
	{
		var format = new TextFormat("Arial", 20, 0, true);
		format.align = TextFormatAlign.RIGHT;
		
		counterTxt = new TextField();
		counterTxt.selectable = false;
		counterTxt.defaultTextFormat = format;
		counterTxt.text = "Bunnies:\n" + numBunnies;
		counterTxt.autoSize = TextFieldAutoSize.LEFT;
		counterTxt.x = Lib.current.stage.stageWidth - counterTxt.width - 10;
		counterTxt.y = 10;
		addChild(counterTxt);
		
		counterTxt.addEventListener(MouseEvent.CLICK, onCounterClick);
	}
	
/*-------------------------------------------------
* EVENT HANDLING
-------------------------------------------------*/
		
	private function onLoop(e:Event):Void 
	{
		//canvasData.lock();
		//canvasData.fillRect(rect, 0);
		for(i in 0...numBunnies)
		{
			var b:Bunny = bunnyArr[i];
			b.update();
			b.image.x = b.x;
			b.image.y = b.y;
			//b.render(canvasData);
		}
		//canvasData.unlock();
	}
	
	function onCounterClick(e:Event):Void
	{
		var more:Int = numBunnies + incBunnies;
		
		var bunny:Bunny; 
		for (i in numBunnies...more)
		{
			//bunny = new Bunny();
			//bunny.position = new Point();
			//bunny.speedX = Math.random() * 5;
			//bunny.speedY = (Math.random() * 5) - 2.5;
			//bunny.scale = 0.3 + Math.random();
			//bunny.rotation = 15 - Math.random() * 30;
			//bunnies.push (bunny);
			
			var bunny:Bunny = new Bunny();
			bunnyArr.push(bunny);
			this.addChild(bunny.image);
		}
		numBunnies = more;
		
		counterTxt.text = "Bunnies:\n" + numBunnies;
		//stage_resize(null);
	}
		
/*-------------------------------------------------
* GETTERS / SETTERS
-------------------------------------------------*/	
		
		
		
}