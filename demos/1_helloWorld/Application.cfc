component 
{
	this.name = "helloWorld";

    boolean function onApplicationStart()
    {
        // I only have to do this line because of my /demos/ subfolders all being their own applications
        // If I followed the defaults and used /config/Wirebox.cfc instead, this line of code
        // would not need to exist. WireBox would find my config file automatically
        var myConfig = createObject( "component", "config.WireBoxHelloWorldConfig" );

        application.wirebox = createObject( "component", "wirebox.system.ioc.Injector" ).init(  binder = myConfig );

        return true;
    }

}