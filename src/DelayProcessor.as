package  
{
	import org.as3commons.metadata.process.impl.AbstractMetadataProcessor;
	/**
	 * ...
	 * @author Andy
	 */
	public class DelayProcessor extends AbstractMetadataProcessor
	{
		
		public function DelayProcessor() 
		{
			super();
			metadataNames[metadataNames.length] = "Theme";
		}
		
		override public function process(target:Object,
										 metadataName:String, 
										 params:Array = null):* 
		{
			
		}
		
	}

}