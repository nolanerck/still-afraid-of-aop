component extends="WireBox.system.ioc.config.Binder"{
	
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
			scanLocations = [ "wbAspectOrientedProgramming.models" ]

			,listeners = [
			    { class="wirebox.system.aop.Mixer", properties={} }
			]
			
		};
		
		map( "constructedMusician" ).to( "wbAspectOrientedProgramming.models.Musician" )
						  	 		.initArg( name="name", value="Pete Best" )
						  	 		.initArg( name="instrument", value="Drums" );

		// add our AOP adivce
		mapAspect( "MusicianAdvice" ).to( "wbAspectOrientedProgramming.models.MusicianAspect" );

		bindAspect( classes=match().mappings( 'constructedMusician' ), 
					methods=match().methods( 'displayMusicianDetails' ), 
					aspects="MusicianAdvice" );

	}	

}