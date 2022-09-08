component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="true"
	{
		return "TODO: finish writing #arguments.invocation.getMethod()#";

		// return arguments.invocation.proceed();
	}

}

