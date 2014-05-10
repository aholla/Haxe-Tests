/**
 * ...
 * @author Adam
 */

package  
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	public class Bunny 
	{
		[Embed(source = "../../images/wabbit_alpha.png")]
		private var BUNNY_BMP:Class;
		
		private var image							:Bitmap;
		private var rect							:Rectangle;
		private var _gravity						:Number = 3;
		private var velocity						:Point;
		private var dest							:Point;
		private var x								:Number = 0;
		private var y								:Number = 0;
		private var _minX							:Number = 0;
		private var _maxX							:Number = 800;
		private var _minY							:Number = 0;
		private var _maxY							:Number = 600;
		
/*-------------------------------------------------
* PUBLIC CONSTRUCTOR
-------------------------------------------------*/
		
		public function Bunny() 
		{
			x = 100;
			y = 100;	
			image = new BUNNY_BMP();
			rect = image.bitmapData.rect;
			dest = new Point();
			velocity = new Point(Math.random() * 10, (Math.random() * 10) - 5);
			
			//image.alpha = Math.random();
			//image.rotation = Math.random() * 360;
		}
		
/*-------------------------------------------------
* PUBLIC FUNCTIONS
-------------------------------------------------*/
		
		public function update():void
		{
			x += velocity.x;
			y += velocity.y;
			velocity.y += _gravity;
                
			if (x > _maxX)
			{
				velocity.x *= -1;
				x = _maxX;
			}
			else if (x < _minX)
			{
				velocity.x *= -1;
				x = _minX;
			}
			
			if (y > _maxY)
			{
				velocity.y *= -0.8;
				y = _maxY;
				
				if (Math.random() > 0.5)
				{
					velocity.y -= Math.random() * 12;
				}
			} 
			else if (y < _minY)
			{
				velocity.y = 0;
				y = _minY;
			}
		}
		
		public function render($canvasData:BitmapData):void
		{
			dest.x = x;
			dest.y = y;
			$canvasData.copyPixels(image.bitmapData, rect, dest, null, null, true); 
		}
		
/*-------------------------------------------------
* PRIVATE FUNCTIONS
-------------------------------------------------*/
		
		
		
/*-------------------------------------------------
* EVENT HANDLING
-------------------------------------------------*/
		
		
		
/*-------------------------------------------------
* GETTERS / SETTERS
-------------------------------------------------*/	
		
		
		
	}

}