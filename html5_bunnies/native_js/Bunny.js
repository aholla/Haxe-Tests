//var Bunny = function(image)
function Bunny(image)
{
	this.image 		= image;
	this.x 			= 0;
	this.y 			= 0;
	this.gravity	= 3;
	//this.velocity	= new Point(0,0); //--  No Point() class in JavaScript... 
	//this.dest		= new Point(0,0);	
	this.velocityX 	= 0;
	this.velocityY 	= 0;
	this.destX		= 0;
	this.destY		= 0;
	this.minX		= 0;
	this.maxX		= 800;
	this.minY		= 0;
	this.maxY		= 600;
	
	this.width 		= 26;
	this.height		= 37;
	
	this.init();
}

Bunny.prototype.init = function()
{
	this.velocityX = (Math.random() * 10);
	this.velocityY = (Math.random() * 10) - 5;	
	//console.log("VelocityX: " + this.velocityX);
}

Bunny.prototype.update = function()
{
	this.x += this.velocityX;
	this.y += this.velocityY;	
	this.velocityY += this.gravity;
		
	if (this.x + this.width > this.maxX)
	{
		this.velocityX *= -1;
		this.x = this.maxX - this.width;
	}
	else if (this.x < this.minX)
	{
		this.velocityX *= -1;
		this.x = this.minX;
	}
	
	if (this.y + this.height > this.maxY)
	{
		this.velocityY *= -0.8;
		this.y = this.maxY - this.height;
		
		if (Math.random() > 0.5)
		{
			this.velocityY -= Math.random() * 12;
		}
	} 
	else if (this.y < this.minY)
	{
		this.velocityY = 0;
		this.y = this.minY;
	}
}

Bunny.prototype.render = function(ctx)
{
	this.destX = (0.5 + this.x) << 0; // a bit of optimised code for pixel snapping.
	this.destY = (0.5 + this.y) << 0;
	ctx.drawImage(this.image, this.destX, this.destY);
}

