component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="true"
	{
		try
		{
			// run the actual query
			var actualMusicianFunctionResults = arguments.invocation.proceed();
		}
		catch (any ex) 
		{
			
		}

		return response;
	}

}

