import Main;
import nme.display.Bitmap;
import nme.display.Loader;
import nme.events.Event;
import nme.media.Sound;
import nme.net.URLLoader;
import nme.net.URLRequest;
import nme.Assets;
import nme.Lib;


class ApplicationMain {
	
	
	private static var completed:Int;
	private static var preloader:NMEPreloader;
	private static var total:Int;
	
	public static var loaders:Hash <Loader>;
	public static var urlLoaders:Hash <URLLoader>;
	
	
	public static function main () {
		
		completed = 0;
		loaders = new Hash <Loader> ();
		urlLoaders = new Hash <URLLoader> ();
		total = 0;
		
		preloader = new NMEPreloader ();
		Lib.current.addChild (preloader);
		preloader.onInit ();
		
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/bomberman5.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/bomberman5_big.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/link.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/megabomberman_bombermen-white_sheet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/megabomberman_ruis_sheet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/shiningforce_characters_sheet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/toejam.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/zombiesatemyneighbors_werewolf_sheet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/zombiesatemyneighbors_zeke_sheet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/shets/zombiesatemyneighbors_zombie_sheet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/wabbit_alpha.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/wabbit_spritesheet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("../images/walk.png", loader);
		total ++;
		
		
		if (total == 0) {
			
			begin ();
			
		} else {
			
			for (path in loaders.keys ()) {
				
				var loader:Loader = loaders.get (path);
				loader.contentLoaderInfo.addEventListener ("complete", loader_onComplete);
				loader.load (new URLRequest (path));
				
			}
			
			for (path in urlLoaders.keys ()) {
				
				var urlLoader:URLLoader = urlLoaders.get (path);
				urlLoader.addEventListener ("complete", loader_onComplete);
				urlLoader.load (new URLRequest (path));
				
			}
			
		}
		
	}
	
	
	private static function begin ():Void {
		
		preloader.onLoaded ();
		Lib.current.removeChild(preloader);
		preloader = null;
		
		Main.main ();
		
	}
	

   public static function getAsset(inName:String):Dynamic {
	   
		
		if (inName=="../images/shets/bomberman5.png") {
			
			return Assets.getBitmapData ("../images/shets/bomberman5.png");
			
		}
		
		if (inName=="../images/shets/bomberman5_big.png") {
			
			return Assets.getBitmapData ("../images/shets/bomberman5_big.png");
			
		}
		
		if (inName=="../images/shets/link.png") {
			
			return Assets.getBitmapData ("../images/shets/link.png");
			
		}
		
		if (inName=="../images/shets/megabomberman_bombermen-white_sheet.png") {
			
			return Assets.getBitmapData ("../images/shets/megabomberman_bombermen-white_sheet.png");
			
		}
		
		if (inName=="../images/shets/megabomberman_ruis_sheet.png") {
			
			return Assets.getBitmapData ("../images/shets/megabomberman_ruis_sheet.png");
			
		}
		
		if (inName=="../images/shets/shiningforce_characters_sheet.png") {
			
			return Assets.getBitmapData ("../images/shets/shiningforce_characters_sheet.png");
			
		}
		
		if (inName=="../images/shets/toejam.png") {
			
			return Assets.getBitmapData ("../images/shets/toejam.png");
			
		}
		
		if (inName=="../images/shets/zombiesatemyneighbors_werewolf_sheet.png") {
			
			return Assets.getBitmapData ("../images/shets/zombiesatemyneighbors_werewolf_sheet.png");
			
		}
		
		if (inName=="../images/shets/zombiesatemyneighbors_zeke_sheet.png") {
			
			return Assets.getBitmapData ("../images/shets/zombiesatemyneighbors_zeke_sheet.png");
			
		}
		
		if (inName=="../images/shets/zombiesatemyneighbors_zombie_sheet.png") {
			
			return Assets.getBitmapData ("../images/shets/zombiesatemyneighbors_zombie_sheet.png");
			
		}
		
		if (inName=="../images/wabbit_alpha.png") {
			
			return Assets.getBitmapData ("../images/wabbit_alpha.png");
			
		}
		
		if (inName=="../images/wabbit_spritesheet.png") {
			
			return Assets.getBitmapData ("../images/wabbit_spritesheet.png");
			
		}
		
		if (inName=="../images/walk.png") {
			
			return Assets.getBitmapData ("../images/walk.png");
			
		}
		
		return null;
		
   }
   
   
   
   
   // Event Handlers
   
   
   
   
	private static function loader_onComplete (event:Event):Void {
		
		completed ++;
		
		preloader.onUpdate (completed, total);
		
		if (completed == total) {
			
			begin ();
			
		}
	   
	}
   
   
}



	

	

	

	

	

	

	

	

	

	

	

	

	
