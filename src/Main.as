package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.system.ApplicationDomain;
	import flash.utils.describeType;
	import org.as3commons.metadata.process.IMetadataProcessor;
	import org.as3commons.metadata.process.impl.GenericMetadataProcessor;
	import org.as3commons.metadata.process.impl.MetadataMetadataProcessor;
	import org.as3commons.metadata.registry.impl.AS3ReflectMetadataProcessorRegistry;
	import org.as3commons.reflect.Type;
	import org.as3commons.reflect.XmlTypeProvider;
	import org.as3commons.reflect.Variable;
	import org.as3commons.reflect.Metadata;
	import org.goday.delay.Delay;
	
	/**
	 * ...
	 * @author Andy
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var clazz:ClazzUseDelay = new ClazzUseDelay();
			addChild(clazz);
			//var pro:GenericMetadataProcessor = new GenericMetadataProcessor(clazz, "delayFun", ApplicationDomain.currentDomain);
			
			var reg:AS3ReflectMetadataProcessorRegistry = new AS3ReflectMetadataProcessorRegistry();
			//pro.process(clazz, "Theme");
			
			var pro:MetadataMetadataProcessor = new MetadataMetadataProcessor(reg, ApplicationDomain.currentDomain);
			var delay:Delay = new Delay();
			pro.process(delay, "Theme");
			//reg.addProcessor(pro);
			reg.process(clazz);
			
			
			//var delay:Delay = new Delay(reg, ApplicationDomain.currentDomain);
			//delay.process(clazz, "tt");
			//trace(reg.getProcessorsForMetadata("Theme"));
			//reg.process(clazz);
		}
		
	}
	
}