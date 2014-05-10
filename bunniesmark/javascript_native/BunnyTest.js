
window.requestAnimFrame = function()
{
    return  window.requestAnimationFrame || 
    window.webkitRequestAnimationFrame   || 
    window.mozRequestAnimationFrame      || 
    window.oRequestAnimationFrame        || 
    window.msRequestAnimationFrame       || 
    function(callback, element)
	{
        window.setTimeout(function()
		{
           callback(+new Date);
        }, 1000 / 60);
    };
}();


window.onload = function()
{
	var bunnyTest = new BunnyTest();	
}

function BunnyTest()
{
	var stats;
	var canvas;
	var ctx;
	var canvasWidth;
	var canvasHeight;
	var image;	
	var bunniesArr;	

	function init()
	{
		bunniesArr = new Array();
		
		//----------------------
		// jQUERRY
		//canvas 			= $("#myCanvas");
		//ctx 			= canvas.get(0).getContext("2d");
		//canvasWidth 	= $(window).get(0).innerWidth;
		//canvasHeight	= $(window).get(0).innerHeight;		
		//canvas.attr("width", canvasWidth);
		//canvas.attr("height", canvasHeight);
		
		//image = new Image();
		//image.src = "../images/wabbit_alpha.png";
		//$(image).load(onImageLoaded());
		//$(image).load(function() 
		//{
		//}
		
		//----------------------	
		// NORMAL
		canvas 	= document.getElementById("canvas");
		ctx 	= canvas.getContext("2d");
			
		ctx.fillStyle = "rgb(255,255,255)";	
		
		canvasWidth 	= 800;//window.innerWidth;
		canvasHeight	= 600;//window.innerHeight;	
		
		console.log("DIMENSIONS:" + canvasWidth + ":" + canvasHeight)
		
		image = new Image();		
		image.onLoad = onImageLoaded();				
		image.src = "../images/wabbit_alpha.png";
		
		
	}
		
	function onImageLoaded()
	{
		for (var i = 0; i < 5000; i++)
		{
			bunniesArr.push(new Bunny(image));
		}
		
		//var interval = setInterval(loop, 1000/60);		
		requestAnimFrame(loop);
	}
	
	function loop()
	{
		ctx.fillRect(0, 0, canvasWidth, canvasHeight);
		//ctx.clearRect(0, 0, canvasWidth, canvasHeight);
		//canvas.width =  canvas.width;
		var len = bunniesArr.length;
		for (var i = 0; i < len; i++)
		{
			var b = bunniesArr[i];
			b.update();
			b.render(ctx);
		}
		
		stats.update();
		requestAnimFrame(loop);
	}
	
	
	
	function initFPS()
	{
		stats = new Stats();
		stats.domElement.style.position='fixed';
		stats.domElement.style.left='0px';
		stats.domElement.style.top='0px';
		document.body.appendChild(stats.domElement);
	}
	
	initFPS();
	init();	
	

	

	
}

