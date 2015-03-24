package bms.jacketpro
{
	
	/**
	 * ...
	 * @author Sadia Fatima
	 */
	public class JacketParts
	{
		
		public static const BASE:String = "base";
		public static const BORDER:String = "border";
		public static const SLEEVES:String = "secondary";
		
		
		[Embed(source="/../assets/front/base_brown.png")] private var front_base_brown:Class;
		[Embed(source="/../assets/front/base_blue.png")] private var front_base_blue:Class;
		[Embed(source = "/../assets/front/base_green.png")] private var front_base_green:Class;
		[Embed(source = "/../assets/front/base_red.png")] private var front_base_red:Class;
		[Embed(source="/../assets/front/base_black.png")] private var front_base_black:Class;
		
		[Embed(source="/../assets/front/border_brown.png")] private var front_border_brown:Class;
		[Embed(source="/../assets/front/border_blue.png")] private var front_border_blue:Class;
		[Embed(source = "/../assets/front/border_green.png")] private var front_border_green:Class;
		[Embed(source = "/../assets/front/border_red.png")] private var front_border_red:Class;
		[Embed(source = "/../assets/front/border_white.png")] private var front_border_white:Class;
		[Embed(source = "/../assets/front/border_black.png")] private var front_border_black:Class;
		
		[Embed(source="/../assets/front/sleeves_brown.png")] private var front_sleeves_brown:Class;
		[Embed(source="/../assets/front/sleeves_blue.png")] private var front_sleeves_blue:Class;
		[Embed(source = "/../assets/front/sleeves_green.png")] private var front_sleeves_green:Class;
		[Embed(source = "/../assets/front/sleeves_black.png")] private var front_sleeves_black:Class;
		[Embed(source = "/../assets/front/sleeves_red.png")] private var front_sleeves_red:Class;
		
		[Embed(source="/../assets/back/base_back_brown.png")] private var back_base_brown:Class;
		[Embed(source="/../assets/back/base_back_blue.png")] private var back_base_blue:Class;
		[Embed(source = "/../assets/back/base_back_green.png")] private var back_base_green:Class;
		[Embed(source = "/../assets/back/base_back_red.png")] private var back_base_red:Class;
		[Embed(source="/../assets/back/base_back_black.png")] private var back_base_black:Class;
		
		[Embed(source="/../assets/back/border_back_brown.png")] private var back_border_brown:Class;
		[Embed(source="/../assets/back/border_back_blue.png")] private var back_border_blue:Class;
		[Embed(source = "/../assets/back/border_back_green.png")] private var back_border_green:Class;
		[Embed(source = "/../assets/back/border_back_red.png")] private var back_border_red:Class;
		[Embed(source = "/../assets/back/border_back_black.png")] private var back_border_black:Class;
		[Embed(source="/../assets/back/border_back_white.png")] private var back_border_white:Class;
		
		[Embed(source="/../assets/back/sleeve_back_brown.png")] private var back_sleeves_brown:Class;
		[Embed(source="/../assets/back/sleeve_back_blue.png")] private var back_sleeves_blue:Class;
		[Embed(source = "/../assets/back/sleeve_back_green.png")] private var back_sleeves_green:Class;
		[Embed(source = "/../assets/back/sleeve_back_red.png")] private var back_sleeves_red:Class;
		[Embed(source = "/../assets/back/sleeve_back_black.png")] private var back_sleeves_black:Class;
		
		
		//[Embed(source = "/../assets/transparent.png")] private var transparentPNG:Class;
		
		private var base:Object;
		private var border:Object;
		private var secondary:Object;
		
		public function JacketParts()
		{
			/*
			base = {brown: {front: transparentPNG, back: transparentPNG},
					blue: {front: transparentPNG, back: transparentPNG},
					green: {front: transparentPNG, back: transparentPNG},
					black: {front: transparentPNG, back: transparentPNG},
					red: {front: transparentPNG, back: transparentPNG},
					white: {front: transparentPNG, back: transparentPNG}};
				
				
			border = {brown:{front:transparentPNG, back:transparentPNG},
						blue: {front: transparentPNG, back: transparentPNG },
						green: {front:transparentPNG, back:transparentPNG},
						black: {front: transparentPNG, back: transparentPNG},
					red: {front: transparentPNG, back: transparentPNG},
					white: {front: transparentPNG, back: transparentPNG}};
				
				
				
			secondary = {brown:{front:transparentPNG, back: transparentPNG},
						blue: {front:transparentPNG, back:transparentPNG},
						green: {front:transparentPNG, back:transparentPNG},
						black: {front: transparentPNG, back: transparentPNG},
					red: {front: transparentPNG, back: transparentPNG},
					white: {front: transparentPNG, back: transparentPNG}};
				
			*/
						
			base = {brown: {front: front_base_brown, back: back_base_brown},
					blue: {front: front_base_blue, back: back_base_blue},
					green: { front: front_base_green, back: back_base_green },
					black: { front: front_base_black, back: back_base_black },
					red: {front: front_base_red, back: back_base_red} };
				
				
			border = {brown:{front:front_border_brown, back:back_border_brown},
						blue: {front: front_border_blue, back: back_border_blue },
						green: {front:front_border_green, back:back_border_green} ,
						black: { front: front_border_black, back: back_border_black },
						red: {front: front_border_red, back: back_border_red},
						white: {front: front_border_white, back: back_border_white} };
				
				
				
			secondary = {brown:{front:front_sleeves_brown, back: back_sleeves_brown},
						blue: {front:front_sleeves_blue, back:back_sleeves_blue},
						green: { front:front_sleeves_green, back:back_sleeves_green },
						black: { front: front_sleeves_black, back: back_sleeves_black },
						red: {front: front_sleeves_red, back: back_sleeves_red} };
				
		}
		
		public function getImage(angle:String, part:String, colour:String):Object
		{
			if (this[part] == null)
			{
				trace("part is null");
				return "";
			}
			else if (this[part][colour] == null)
			{
				trace("colour is null");
				return "";
			}
			else if (this[part][colour][angle] == null)
			{
				trace("angle is null");
				return "";
			}
			else return this[part][colour][angle];
		}
		
	}
	
}