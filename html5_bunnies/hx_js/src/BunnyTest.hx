/**
 * ...
 * @author Adam H
 */

package ;
import haxe.Timer;
import js.Lib;
import js.Dom;
import CanvasDefs;


class BunnyTest 
{
	private var canvas							:Canvas;
	private var ctx								:CanvasRenderingContext2D;
	
	private var cWidth							:Int;
	private var cHeight							:Int;
	private var image							:Image;
	private var bunnyArr						:Array<Bunny>;
	//private var stats							:HtmlDom;
			
/*-------------------------------------------------
* PUBLIC CONSTRUCTOR
-------------------------------------------------*/
	public function new() 
	{
		trace("bunny test");
		
		initFPS();
		
		canvas = cast Lib.document.getElementById("canvas");
		ctx = canvas.getContext("2d");
		
		cWidth = 800;		
		cHeight = 600;
		
		bunnyArr = [];
		
		image = untyped __js__("new Image()");
		image.onload = onImageLoaded;
		image.src = "../../images/wabbit_alpha.png";
	}	
		
/*-------------------------------------------------
* PUBLIC FUNCTIONS
-------------------------------------------------*/
		
		
		
/*-------------------------------------------------
* PRIVATE FUNCTIONS
-------------------------------------------------*/
		
		
	private function onTimer() 
	{
		ctx.clearRect(0, 0, cWidth, cHeight);
		
		var l:Int = bunnyArr.length;
		for (i in 0...l)
		{
			var b:Bunny = bunnyArr[i];
			b.update();
			b.render(ctx);
		}
		//stats.update();
	}
	
	function initFPS()
	{
		//stats = cast Lib.document.getElementById("s");
		//stats.domElement.style.position='fixed';
		//stats.domElement.style.left='0px';
		//stats.domElement.style.top='0px';
		//document.body.appendChild(stats.domElement);
	}
		
/*-------------------------------------------------
* EVENT HANDLING
-------------------------------------------------*/
		
	private function onImageLoaded(e:Event) 
	{
		ctx.drawImage(image, 0, 0);	
		
		for (i in 0...5000)
		{
			bunnyArr.push(new Bunny(image));
		}
		
		var t:Timer = new Timer(Std.int(1000 / 60));
		t.run = onTimer;
	}
		
/*-------------------------------------------------
* GETTERS / SETTERS
-------------------------------------------------*/	
		
		
		
}