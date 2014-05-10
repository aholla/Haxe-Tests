/**
 * ...
 * @author Adam H
 */

package ;
import js.Dom;
import CanvasDefs;
import js.Lib;


class Bunny 
{
	private var image							:Image;
	private var x								:Float;
	private var y								:Float;
	private var gravity							:Int;
	private var velocity						:Point;
	private var dest							:Point;	
	private var minX							:Int;
	private var maxX							:Int;
	private var minY							:Int;
	private var maxY							:Int;
	private var width							:Int;
	private var height							:Int;
	
/*-------------------------------------------------
* PUBLIC CONSTRUCTOR
-------------------------------------------------*/
	
	public function new(image) 
	{
		this.image = image;
		
		gravity = 3;		
		x = 0;
		y = 0;		
		width 	= 26;
		height	= 37;
		minX = 0;	
		maxX = 800;		
		minY = 0;
		maxY = 600;
		dest = { x:0.0, y:0.0 };		
		velocity = {x:Math.random() * 10, y:(Math.random() * 10) - 5};
	}
	
/*-------------------------------------------------
* PUBLIC FUNCTIONS
-------------------------------------------------*/
	
	public function update():Void
	{
		x += velocity.x;
		y += velocity.y;
		velocity.y += gravity;
		
		if (x + width > maxX)
		{
			velocity.x *= -1;
			x = maxX - width;
		}
		else if (x < minX)
		{
			velocity.x *= -1;
			x = minX;
		}
		
		if (y + height > maxY)
		{
			velocity.y *= -0.8;
			y = maxY - height;
			
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
	
	public function render(canvasData:CanvasRenderingContext2D):Void
	{
		//dest.x = x;
		//dest.y = y;
		dest.x = Std.int(x); // a bit of optimised code for pixel snapping.
		dest.y = Std.int(y);
		canvasData.drawImage(image, dest.x, dest.y);
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