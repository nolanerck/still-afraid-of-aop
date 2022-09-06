component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="true"
	{
		var preResults = invocation.getTarget().checkPermissions();

		var actualMusicianFunctionResults = arguments.invocation.proceed();

		var postResults = invocation.getTarget().sendDetailsEmail();

		var response = preResults & actualMusicianFunctionResults & postResults;

		return response;
	}

}

