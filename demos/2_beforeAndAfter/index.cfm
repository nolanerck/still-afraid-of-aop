<!--- WireBox with the config CFC being passed in so we can set some options. 

	and providing some defaults for the Musician CFC from outside that file.
--->

<cfset myConfig = createObject( "component", "config.WireBoxBinder" ) />

<cfset wirebox = createObject( "component", "wirebox.system.ioc.Injector" ).init(  binder = myConfig ) />

<!--- <cfset myResponse = CreateObject( "component", "wbAspectOrientedProgramming.models.Musician" ).init( "Eddie Van Halen", "guitar" ).displayMusicanDetails(); --->
<cfset myResponse = wirebox.getInstance( "constructedMusician" ).displayMusicianDetails() />


<cfoutput>
	#myResponse#
</cfoutput>
