<!--- 
    super easy use of WireBox to do Dependency Injection in a non-ColdBox app 
--->

<!--- old way --->
<cfset musician = Createobject( "component", "models.Musician" ).init() />
<cfset musician.displayInfo() />

<!--- shorter old way --->
<cfset musician = new models.Musician() />
<cfset musician.displayInfo() />


<!--- the WireBox way --->
<cfset musician = application.wirebox.getInstance( "Musician" ) />
<cfset musician.displayInfo() />

