component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="false"
	{
		var actualMusicianFunctionResults = arguments.invocation.proceed();
		
		var response = "checking permissions...<br />" 
						& actualMusicianFunctionResults 
						& "<br />exporting a copy of the data to the backup server...";

		return response;
	}

}

