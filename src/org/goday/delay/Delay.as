package org.goday.delay 
{
	import flash.system.ApplicationDomain;
	import org.as3commons.metadata.process.impl.MetadataMetadataProcessor;
	import org.as3commons.metadata.registry.IMetadataProcessorRegistry;
	/**
	 * ...
	 * @author Andy
	 */
	[MetadataProcessor(processMethod="run", metadataNames="Theme")]
	public class Delay
	{
		public function Delay() 
		{
			
		}
		
		public function run():void
		{
			trace("run");
		}
	}

}