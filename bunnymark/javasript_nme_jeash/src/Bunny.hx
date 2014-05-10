/**
 * ...
 * @author Adam H
 */

package ;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.PixelSnapping;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.Lib;
import nme.Assets;

//class BunnyBmp extends BitmapData {public function new(){super(0,0);}}

class Bunny 
{
	public var image							:Bitmap;
	public var x								:Float;
	public var y								:Float;
	
	private var rect							:Rectangle;
	private var gravity							:Int;
	private var velocity						:Point;
	private var dest							:Point;	
	private var minX							:Int;
	private var maxX							:Int;
	private var minY							:Int;
	private var maxY							:Int;
	
/*-------------------------------------------------
* PUBLIC CONSTRUCTOR
-------------------------------------------------*/
	
	public function new() 
	{
		//image = new Bitmap(new BunnyBmp(), PixelSnapping.ALWAYS, false);
		
		var bd:BitmapData = Assets.getBitmapData("../images/wabbit_alpha.png");
		image = new Bitmap(bd);
		
		gravity = 3;		
		x = 0;
		y = 0;
		
		minX = 0;	
		maxX = Lib.current.stage.stageWidth;		
		minY = 0;
		maxY = Lib.current.stage.stageHeight;		
		
		rect = image.bitmapData.rect;
		dest = new Point();
		velocity = new Point(Math.random() * 10, ((Math.random() * 4) - 2));
	}
	
/*-------------------------------------------------
* PUBLIC FUNCTIONS
-------------------------------------------------*/
	
	public function update():Void
	{
		x += velocity.x;
		y += velocity.y;
		velocity.y += gravity;
		
		if (x > maxX)
		{
			velocity.x *= -1;
			x = maxX;
		}
		else if (x < minX)
		{
			velocity.x *= -1;
			x = minX;
		}
		
		if (y > maxY)
		{
			velocity.y *= -0.8;
			y = maxY;
			
			if (Math.random() > 0.5)
			{
				velocity.y -= Math.random() * 12;
			}
		} 
		else if (y < minY)
		{
			velocity.y = 0;
			y = minY;
		}
	}
	
	public function render(canvasData:BitmapData):Void
	{
		dest.x = x;
		dest.y = y;
		canvasData.copyPixels(image.bitmapData, rect, dest, null, null, true); 
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