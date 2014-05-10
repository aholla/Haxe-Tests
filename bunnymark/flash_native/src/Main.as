package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import mrdoob.Stats;
	
	/**
	 * ...
	 * @author Adam H
	 */
	
[SWF(width = "800", height = "600", frameRate = "30", backgroundColor = "#000000")]

	public class Main extends Sprite 
	{
		
		private var numBunnies				:int = 8000;
		private var bunnyArr				:Array;
		private var canvas					:Bitmap;
		private var canvasData				:BitmapData;
		private var rect					:Rectangle;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			canvasData = new BitmapData(800, 600);
			canvas = new Bitmap(canvasData);
			addChild(canvas);
			
			rect = canvasData.rect;
			
			bunnyArr = [];
			
			for (var i:int = 0; i < numBunnies; i++) 
			{
				var bunny:Bunny = new Bunny();
				bunnyArr.push(bunny);
			}
			
			this.addEventListener(Event.ENTER_FRAME, onLoop);
			
			addChild(new Stats);
		}
		
		private function onLoop(e:Event):void 
		{
			canvasData.lock();
			canvasData.fillRect(rect, 0);
			for (var i:int = 0; i < numBunnies; i++) 
			{
				var b:Bunny = bunnyArr[i];
				b.update();
				b.render(canvasData);
			}
			canvasData.unlock();
		}
		
	}
	
}