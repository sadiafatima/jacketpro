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
		public static const SLEEVES:String = "sleeves";
		
		[Embed(source="/../assets/front/base_brown.png")] private var front_base_brown:Class;
		[Embed(source="/../assets/front/base_blue.png")] private var front_base_blue:Class;
		[Embed(source="/../assets/front/base_orig.png")] private var front_base_green:Class;
		
		[Embed(source="/../assets/front/border_brown.png")] private var front_border_brown:Class;
		[Embed(source="/../assets/front/border_blue.png")] private var front_border_blue:Class;
		[Embed(source="/../assets/front/border_orig.png")] private var front_border_green:Class;
		
		[Embed(source="/../assets/front/sleeves_brown.png")] private var front_sleeves_brown:Class;
		[Embed(source="/../assets/front/sleeves_blue.png")] private var front_sleeves_blue:Class;
		[Embed(source="/../assets/front/sleeves_orig.png")] private var front_sleeves_green:Class;
		
		[Embed(source="/../assets/back/base_back_brown.png")] private var back_base_brown:Class;
		[Embed(source="/../assets/back/base_back_blue.png")] private var back_base_blue:Class;
		[Embed(source="/../assets/back/base_back_orig.png")] private var back_base_green:Class;
		
		[Embed(source="/../assets/back/border_back_brown.png")] private var back_border_brown:Class;
		[Embed(source="/../assets/back/border_back_blue.png")] private var back_border_blue:Class;
		[Embed(source="/../assets/back/border_back_orig.png")] private var back_border_green:Class;
		
		[Embed(source="/../assets/back/sleeves_back_brown.png")] private var back_sleeves_brown:Class;
		[Embed(source="/../assets/back/sleeves_back_blue.png")] private var back_sleeves_blue:Class;
		[Embed(source="/../assets/back/sleeves_back_orig.png")] private var back_sleeves_green:Class;
		
		private var base:Object;
		private var border:Object;
		private var sleeves:Object;
		
		public function JacketParts()
		{
			base = {brown: {front: front_base_brown, back: back_base_brown},
					blue: {front: front_base_blue, back: back_base_blue},
					green: {front: front_base_green, back: back_base_green} };
				
				
			border = {brown:{front:front_border_brown, back:back_border_brown},
						blue: {front: front_border_blue, back: back_border_blue },
						green: {front:front_border_green, back:back_border_green} };
				
				
			sleeves = {brown:{front:front_sleeves_brown, back: back_sleeves_brown},
						blue: {front:front_sleeves_blue, back:back_sleeves_blue},
						green: {front:front_sleeves_green, back:back_sleeves_green} };
				
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
		
		
		/*
		private var basef:Object;
		private var borderf:Object;
		private var sleevesf:Object;
		
		private var baseb:Object;
		private var borderb:Object;
		private var sleevesb:Object;
		
		
		public function JacketParts()
		{
			basef = new JacketPart();
			basef.brown = front_base_brown;
			basef.blue = new front_base_blue();
			basef.green = new front_base_green();
			
			borderf = new JacketPart();
			borderf.brown = front_border_brown;
			borderf.blue = new front_border_blue();
			borderf.green = new front_border_green();
			
			sleevesf = new JacketPart();
			sleevesf.brown = front_sleeves_brown;
			sleevesf.blue = new front_sleeves_blue();
			sleevesf.green = new front_sleeves_green();
				
			baseb = new JacketPart();
			baseb.brown = new back_base_brown();
			baseb.blue = new back_base_blue();
			baseb.green = new back_base_green();
				
			borderb = new JacketPart();
			borderb.brown = new back_border_brown();
			borderb.blue = new back_border_blue();
			borderb.green = new back_border_green();
				
			sleevesb = new JacketPart();
			sleevesb.brown = new back_sleeves_brown();
			sleevesb.blue = new back_sleeves_blue();
			sleevesb.green = new back_sleeves_green();
				
			trace("jacket parts constructor basef:" + basef);
		}
		
		public function getImage(angle:String, part:String, colour:String):Object
		{
			trace("angle: " + angle + " part: " + part + " colour: " + colour);
			if (angle == ViewingAngle.FRONT) part = part + "f";
			else part = part + "b";
			
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
			else return this[part][colour];
		}
		*/
		
	}
	
}