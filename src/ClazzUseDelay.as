package  
{
	import flash.display.Sprite;
	import flash.events.Event;
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
			addEventListener(Event.ADDED_TO_STAGE, addToStageHandler);
			
		}
		
		private function addToStageHandler(event:Event):void
		{
			stage.addEventListener(MouseEvent.CLICK, stageClickHandler);
		}
		
		private function stageClickHandler(event:MouseEvent):void
		{
			graphics.beginFill(btnColor);
			graphics.drawRect(0, 0, 200,200);
		}
		
		[Delay(time=1000)]
		public function delayFun(arg:*):void
		{
			trace(arg);
		}
	}

}