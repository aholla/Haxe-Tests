package nme.installer;


import nme.display.Bitmap;
import nme.display.BitmapData;
import nme.media.Sound;
import nme.net.URLRequest;
import nme.text.Font;
import nme.utils.ByteArray;
import ApplicationMain;


/**
 * ...
 * @author Joshua Granick
 */

class Assets {

	
	public static function getBitmapData (id:String):BitmapData {
		
		// Should be bitmapData.clone (), but stopped working in recent Jeash builds
		
		switch (id) {
			
			case "../images/shets/bomberman5.png": return cast (ApplicationMain.loaders.get ("../images/shets/bomberman5.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/bomberman5_big.png": return cast (ApplicationMain.loaders.get ("../images/shets/bomberman5_big.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/link.png": return cast (ApplicationMain.loaders.get ("../images/shets/link.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/megabomberman_bombermen-white_sheet.png": return cast (ApplicationMain.loaders.get ("../images/shets/megabomberman_bombermen-white_sheet.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/megabomberman_ruis_sheet.png": return cast (ApplicationMain.loaders.get ("../images/shets/megabomberman_ruis_sheet.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/shiningforce_characters_sheet.png": return cast (ApplicationMain.loaders.get ("../images/shets/shiningforce_characters_sheet.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/toejam.png": return cast (ApplicationMain.loaders.get ("../images/shets/toejam.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/zombiesatemyneighbors_werewolf_sheet.png": return cast (ApplicationMain.loaders.get ("../images/shets/zombiesatemyneighbors_werewolf_sheet.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/zombiesatemyneighbors_zeke_sheet.png": return cast (ApplicationMain.loaders.get ("../images/shets/zombiesatemyneighbors_zeke_sheet.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/shets/zombiesatemyneighbors_zombie_sheet.png": return cast (ApplicationMain.loaders.get ("../images/shets/zombiesatemyneighbors_zombie_sheet.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/wabbit_alpha.png": return cast (ApplicationMain.loaders.get ("../images/wabbit_alpha.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/wabbit_spritesheet.png": return cast (ApplicationMain.loaders.get ("../images/wabbit_spritesheet.png").contentLoaderInfo.content, Bitmap).bitmapData;
			case "../images/walk.png": return cast (ApplicationMain.loaders.get ("../images/walk.png").contentLoaderInfo.content, Bitmap).bitmapData;
			
		}
		
		return null;
		
	}
	
	
	public static function getBytes (id:String):ByteArray {
		
		switch (id) {
			
			//case "../images/shets/bomberman5.png": return ByteArray.readFile ("../images/shets/bomberman5.png");
			//case "../images/shets/bomberman5_big.png": return ByteArray.readFile ("../images/shets/bomberman5_big.png");
			//case "../images/shets/link.png": return ByteArray.readFile ("../images/shets/link.png");
			//case "../images/shets/megabomberman_bombermen-white_sheet.png": return ByteArray.readFile ("../images/shets/megabomberman_bombermen-white_sheet.png");
			//case "../images/shets/megabomberman_ruis_sheet.png": return ByteArray.readFile ("../images/shets/megabomberman_ruis_sheet.png");
			//case "../images/shets/shiningforce_characters_sheet.png": return ByteArray.readFile ("../images/shets/shiningforce_characters_sheet.png");
			//case "../images/shets/toejam.png": return ByteArray.readFile ("../images/shets/toejam.png");
			//case "../images/shets/zombiesatemyneighbors_werewolf_sheet.png": return ByteArray.readFile ("../images/shets/zombiesatemyneighbors_werewolf_sheet.png");
			//case "../images/shets/zombiesatemyneighbors_zeke_sheet.png": return ByteArray.readFile ("../images/shets/zombiesatemyneighbors_zeke_sheet.png");
			//case "../images/shets/zombiesatemyneighbors_zombie_sheet.png": return ByteArray.readFile ("../images/shets/zombiesatemyneighbors_zombie_sheet.png");
			//case "../images/wabbit_alpha.png": return ByteArray.readFile ("../images/wabbit_alpha.png");
			//case "../images/wabbit_spritesheet.png": return ByteArray.readFile ("../images/wabbit_spritesheet.png");
			//case "../images/walk.png": return ByteArray.readFile ("../images/walk.png");
			//
		}
		
		return null;
		
	}
	
	
	public static function getFont (id:String):Font {
		
		switch (id) {
			
			
		}
		
		return null;
		
	}
	
	
	public static function getSound (id:String):Sound {
		
		switch (id) {
			
			
		}
		
		return null;
		
	}
	
	
	public static function getText (id:String):String {
		
		switch (id) {
			
			
		}
		
		return null;
		
	}
	
	
}