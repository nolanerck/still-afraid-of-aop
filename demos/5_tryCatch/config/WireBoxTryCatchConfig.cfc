component extends="WireBox.system.ioc.config.Binder"{
	
	/**
	* Configure WireBox, that's it!
	*/
	function configure(){		

		var modelsDir = "demos.5_tryCatch.models";

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
			scanLocations = [ modelsDir ]

			,listeners = [
			    { class="wirebox.system.aop.Mixer", properties={} }
			]
			
		};
		
		map( "constructedMusician" ).to( "#modelsDir#.Musician" )
									.initArg( name="name", value="Pete Best" )
						  	 		.initArg( name="instrument", value="Drums" );

		// add our AOP adivce
		mapAspect( "MusicianAdvice" ).to( "#modelsDir#.MusicianAspect" );

		bindAspect( classes=match().mappings( 'constructedMusician' ), 
					methods=match().methods( 'getQuarterlyReport' ), 
					aspects="MusicianAdvice" );

	}	

}