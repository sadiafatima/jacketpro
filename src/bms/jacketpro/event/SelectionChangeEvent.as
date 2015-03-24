package bms.jacketpro.event
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Sadia Fatima
	 */

    public class SelectionChangeEvent extends Event
    {   
        public function SelectionChangeEvent(type:String) {
                super(type, true);
        }
		
        public static const COLOUR_CHANGE:String = "colourChange";
        public static const PART_CHANGE:String = "partChange";
		public static const ANGLE_CHANGE:String = "angleChange";
		
        public var colour:String;
		public var part:String;

        override public function clone():Event {
            return new SelectionChangeEvent(type);
        }
	}
	
}