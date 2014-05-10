/**
 * Based upon Mike Canns Typdesf : mikecann.co.uk
 * @author Adam H
 */

package ;

import js.Dom;

typedef Canvas = { > HtmlDom,
	function getContext(type:String) : CanvasRenderingContext2D;	
}

typedef CanvasRenderingContext2D = {
	function fillRect(x:Float, y:Float, width:Float, height:Float) : Void;
	function clearRect(x:Float, y:Float, width:Float, height:Float) : Void;
	function drawImage(img:Image, sourceX:Float, sourceY:Float, ?sourceWidth:Float, ?sourceHeight:Float, ?destX:Float, ?destY:Float, ?destWidth:Float, ?destHeight:Float) : Void;
	var fillStyle : Dynamic;
}

typedef Point = {
	var x:Float;
	var y:Float;
}