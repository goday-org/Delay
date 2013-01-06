package  
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Andy
	 */
	public class ClazzUseDelay extends Sprite
	{
		[Theme(part = "buttonColor")]
		public var btnColor:uint;
		
		public function ClazzUseDelay() 
		{
			
		}
		
		
		public function delayFun():void
		{
			trace("final");
		}
	}

}