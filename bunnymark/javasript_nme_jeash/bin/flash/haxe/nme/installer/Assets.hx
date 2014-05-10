package nme.installer;


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
		
		switch (id) {
			
			case "../images/shets/bomberman5.png": return cast (new NME____images_shets_bomberman5_png (), BitmapData);
			case "../images/shets/bomberman5_big.png": return cast (new NME____images_shets_bomberman5_big_png (), BitmapData);
			case "../images/shets/link.png": return cast (new NME____images_shets_link_png (), BitmapData);
			case "../images/shets/megabomberman_bombermen-white_sheet.png": return cast (new NME____images_shets_megabomberman_bombermen_white_sheet_png (), BitmapData);
			case "../images/shets/megabomberman_ruis_sheet.png": return cast (new NME____images_shets_megabomberman_ruis_sheet_png (), BitmapData);
			case "../images/shets/shiningforce_characters_sheet.png": return cast (new NME____images_shets_shiningforce_characters_sheet_png (), BitmapData);
			case "../images/shets/toejam.png": return cast (new NME____images_shets_toejam_png (), BitmapData);
			case "../images/shets/zombiesatemyneighbors_werewolf_sheet.png": return cast (new NME____images_shets_zombiesatemyneighbors_werewolf_sheet_png (), BitmapData);
			case "../images/shets/zombiesatemyneighbors_zeke_sheet.png": return cast (new NME____images_shets_zombiesatemyneighbors_zeke_sheet_png (), BitmapData);
			case "../images/shets/zombiesatemyneighbors_zombie_sheet.png": return cast (new NME____images_shets_zombiesatemyneighbors_zombie_sheet_png (), BitmapData);
			case "../images/wabbit_alpha.png": return cast (new NME____images_wabbit_alpha_png (), BitmapData);
			case "../images/wabbit_spritesheet.png": return cast (new NME____images_wabbit_spritesheet_png (), BitmapData);
			case "../images/walk.png": return cast (new NME____images_walk_png (), BitmapData);
			
		}
		
		return null;
		
	}
	
	
	public static function getBytes (id:String):ByteArray {
		
		switch (id) {
			
			case "../images/shets/bomberman5.png": return cast (new NME____images_shets_bomberman5_png (), ByteArray);
			case "../images/shets/bomberman5_big.png": return cast (new NME____images_shets_bomberman5_big_png (), ByteArray);
			case "../images/shets/link.png": return cast (new NME____images_shets_link_png (), ByteArray);
			case "../images/shets/megabomberman_bombermen-white_sheet.png": return cast (new NME____images_shets_megabomberman_bombermen_white_sheet_png (), ByteArray);
			case "../images/shets/megabomberman_ruis_sheet.png": return cast (new NME____images_shets_megabomberman_ruis_sheet_png (), ByteArray);
			case "../images/shets/shiningforce_characters_sheet.png": return cast (new NME____images_shets_shiningforce_characters_sheet_png (), ByteArray);
			case "../images/shets/toejam.png": return cast (new NME____images_shets_toejam_png (), ByteArray);
			case "../images/shets/zombiesatemyneighbors_werewolf_sheet.png": return cast (new NME____images_shets_zombiesatemyneighbors_werewolf_sheet_png (), ByteArray);
			case "../images/shets/zombiesatemyneighbors_zeke_sheet.png": return cast (new NME____images_shets_zombiesatemyneighbors_zeke_sheet_png (), ByteArray);
			case "../images/shets/zombiesatemyneighbors_zombie_sheet.png": return cast (new NME____images_shets_zombiesatemyneighbors_zombie_sheet_png (), ByteArray);
			case "../images/wabbit_alpha.png": return cast (new NME____images_wabbit_alpha_png (), ByteArray);
			case "../images/wabbit_spritesheet.png": return cast (new NME____images_wabbit_spritesheet_png (), ByteArray);
			case "../images/walk.png": return cast (new NME____images_walk_png (), ByteArray);
			
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
		
		var bytes:ByteArray = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
	}
	
	
}