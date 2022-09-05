component
{
	variables.name = "";
	variables.instrument = "";

	public any function init()
	{
		variables.name = "John Lennon";
		variables.instrument = "Guitar";

		return this;
	}

	public any function displayInfo()
	{
		WriteOutput( "<div>" );
		WriteOutput( "Name: " & variables.name );
		WriteOutput( "<br />" );
		WriteOutput( "Instrument: " & variables.instrument );
		WriteOutput( "</div><br><br>" );
	}

}
