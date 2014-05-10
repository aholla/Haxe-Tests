import Main;
import nme.Assets;


class ApplicationMain {
	
	static var mPreloader:NMEPreloader;

	public static function main () {
		
		var call_real = true;
		
		
		var loaded:Int = nme.Lib.current.loaderInfo.bytesLoaded;
		var total:Int = nme.Lib.current.loaderInfo.bytesTotal;
		
		if (loaded < total || true) /* Always wait for event */ {
			
			call_real = false;
			mPreloader = new NMEPreloader();
			nme.Lib.current.addChild(mPreloader);
			mPreloader.onInit();
			mPreloader.onUpdate(loaded,total);
			nme.Lib.current.addEventListener (nme.events.Event.ENTER_FRAME, onEnter);
			
		}
		
		
		if (call_real)
			Main.main();
	}

	static function onEnter (_) {
		
		var loaded:Int = nme.Lib.current.loaderInfo.bytesLoaded;
		var total:Int = nme.Lib.current.loaderInfo.bytesTotal;
		mPreloader.onUpdate(loaded,total);
		
		if (loaded >= total) {
			
			mPreloader.onLoaded();
			nme.Lib.current.removeEventListener(nme.events.Event.ENTER_FRAME, onEnter);
			nme.Lib.current.removeChild(mPreloader);
			mPreloader = null;
			
			Main.main ();
			
		}
		
	}

	public static function getAsset (inName:String):Dynamic {
		
		
		if (inName=="../images/shets/bomberman5.png")
			 
            return Assets.getBitmapData ("../images/shets/bomberman5.png");
         
		
		if (inName=="../images/shets/bomberman5_big.png")
			 
            return Assets.getBitmapData ("../images/shets/bomberman5_big.png");
         
		
		if (inName=="../images/shets/link.png")
			 
            return Assets.getBitmapData ("../images/shets/link.png");
         
		
		if (inName=="../images/shets/megabomberman_bombermen-white_sheet.png")
			 
            return Assets.getBitmapData ("../images/shets/megabomberman_bombermen-white_sheet.png");
         
		
		if (inName=="../images/shets/megabomberman_ruis_sheet.png")
			 
            return Assets.getBitmapData ("../images/shets/megabomberman_ruis_sheet.png");
         
		
		if (inName=="../images/shets/shiningforce_characters_sheet.png")
			 
            return Assets.getBitmapData ("../images/shets/shiningforce_characters_sheet.png");
         
		
		if (inName=="../images/shets/toejam.png")
			 
            return Assets.getBitmapData ("../images/shets/toejam.png");
         
		
		if (inName=="../images/shets/zombiesatemyneighbors_werewolf_sheet.png")
			 
            return Assets.getBitmapData ("../images/shets/zombiesatemyneighbors_werewolf_sheet.png");
         
		
		if (inName=="../images/shets/zombiesatemyneighbors_zeke_sheet.png")
			 
            return Assets.getBitmapData ("../images/shets/zombiesatemyneighbors_zeke_sheet.png");
         
		
		if (inName=="../images/shets/zombiesatemyneighbors_zombie_sheet.png")
			 
            return Assets.getBitmapData ("../images/shets/zombiesatemyneighbors_zombie_sheet.png");
         
		
		if (inName=="../images/wabbit_alpha.png")
			 
            return Assets.getBitmapData ("../images/wabbit_alpha.png");
         
		
		if (inName=="../images/wabbit_spritesheet.png")
			 
            return Assets.getBitmapData ("../images/wabbit_spritesheet.png");
         
		
		if (inName=="../images/walk.png")
			 
            return Assets.getBitmapData ("../images/walk.png");
         
		
		
		return null;
		
	}
	
}



	
		class NME____images_shets_bomberman5_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_bomberman5_big_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_link_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_megabomberman_bombermen_white_sheet_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_megabomberman_ruis_sheet_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_shiningforce_characters_sheet_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_toejam_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_zombiesatemyneighbors_werewolf_sheet_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_zombiesatemyneighbors_zeke_sheet_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_shets_zombiesatemyneighbors_zombie_sheet_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_wabbit_alpha_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_wabbit_spritesheet_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	

	
		class NME____images_walk_png extends nme.display.BitmapData { public function new () { super (0, 0); } }
	
