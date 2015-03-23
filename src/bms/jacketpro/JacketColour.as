package bms.jacketpro
{
	
	/**
	 * ...
	 * @author Sadia Fatima
	 */
	public class JacketColour
	{
		public static const BLACK:String = "black";
		public static const BLUE:String = "blue";
		public static const BROWN:String = "brown";
		public static const GREEN:String = "green";
		public static const RED:String = "red";
		public static const WHITE:String = "white";
		
		[Embed(source = '/../assets/catalog/ValenciaBlack.jpg')] public static var black :Class;
		[Embed(source = '/../assets/catalog/ValenciaCobalt.jpg')] public static var blue:Class;
		[Embed(source = '/../assets/catalog/ValenciaRichBrown.jpg')] public static var brown:Class;
		[Embed(source = '/../assets/catalog/ValenciaAmazon.jpg')] public static var green:Class;
		[Embed(source = '/../assets/catalog/ValenciaFerrariRed.jpg')] public static var red:Class;
		[Embed(source = '/../assets/catalog/ValenciaWhite.jpg')] public static var white:Class;
	}
	
}