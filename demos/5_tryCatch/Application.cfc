component 
{
	this.name = "tryCatchAppDemo";

    boolean function onApplicationStart()
    {
        // I only have to do this line because of my /demos/ subfolders all being their own applications
        // If I followed the defaults and used /config/Wirebox.cfc instead, this line of code
        // would not need to exist. WireBox would find my config file automatically
        var myConfig = createObject( "component", "config.WireBoxTryCatchConfig" );

        // application.wirebox = createObject( "component", "wirebox.system.ioc.Injector" ).init(  binder = myConfig );
        new wirebox.system.ioc.Injector( binder = myConfig );

        return true;
    }
    
    boolean function onRequestStart()
    {
        application.isProduction = true;
        // application.isProduction = false;


        if( structKeyExists( url, "reload" ) )
        {
            this.onApplicationStart();
        }

        return true;
    }
}