package org.goday.delay
{
import org.as3commons.reflect.INamespaceOwner;
import org.as3commons.reflect.Metadata;
import org.as3commons.reflect.MetadataArgument;
import org.as3commons.reflect.Method;
import org.as3commons.reflect.Variable;
/**
 * ...
 * @author Andy
 */
[MetadataProcessor(processMethod="run",metadataNames="Theme, Delay")]

public class Delay
{
    public function Delay()
    {
    
    }
    private var method:Method;
    
    public function run(target:Object, params:Array=null):void
    {
        //trace("run" + target + "  ");
        var i:INamespaceOwner = params[0];
        if (i is Variable)
        {
            var variable:Variable = Variable(i);
            var metadatas:Array = variable.metadata;
            for each (var metadata:Metadata in metadatas)
            {
                var arguments:Array = metadata.arguments;
                for each (var arg:MetadataArgument in arguments)
                {
                    trace(arg.key + ": " + arg.value);
                    target[variable.name] = 0xffff00;
                }
            }
        }
        else if (i is Method)
        {
            method = Method(i);
            method.invoke(target, ["Invoke Run!"]);
        }
    
    }

}

}