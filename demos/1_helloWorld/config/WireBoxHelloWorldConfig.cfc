component extends="WireBox.system.ioc.config.Binder"
{
	
	/**
	* Configure WireBox, that's it!
	*/
	function configure(){		

		// The WireBox configuration structure DSL
		wireBox = {
			// Scope registration, automatically register a wirebox injector instance on any CF scope
			// By default it registeres itself on application scope
			scopeRegistration = {
				enabled = true,
				scope   = "application", // server, cluster, session, application
				key		= "wireBox"
			},

			// Package scan locations
			scanLocations = [ "demos.1_helloWorld.models" ]
		};
	}	
}

