component
{
	variables.name = "Ringo Starr";
	variables.instrument = "Drums";

	public any function init( string name, string instrument )
	{
		variables.name = arguments.name;
		variables.instrument = arguments.instrument;

		return this;
	}

	public any function displayMusicianDetails()
	{
		var output = "Name: #variables.name# <br />Instrument: #variables.instrument#";
		return output;
	}

}
