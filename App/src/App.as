package
{
	import com.example.ClassFromLibrary;

	import flash.display.Sprite;

	public class App extends Sprite
	{
		public function App()
		{
			super();
			trace("Started app");
			ClassFromLibrary.methodFromLibrary();
		}
	}
}