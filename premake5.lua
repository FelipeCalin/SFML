project "SFML"

	kind "StaticLib"

	language "C"



	targetdir ("bin/" .. outputdir .. "/%{prj.name}")

	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")



	files

	{
		"include/SFML/Audio.hpp",
		"include/SFML/Config.hpp",
        "include/SFML/GpuPreference.hpp",
        "include/SFML/Graphics.hpp",
        "include/SFML/Main.hpp",
        "include/SFML/Network.hpp",
        "include/SFML/OpenGL.hpp",
        "include/SFML/System.hpp",
        "include/SFML/Window.hpp"
	}

	filter "system:linux"

		pic "On"

		systemversion "latest"

		staticruntime "On"



		files

		{
		}



		defines

		{
		}


	filter "system:windows"

		systemversion "latest"

		staticruntime "On"

		files
		{
		}



		defines 

		{ 
		}



	filter "configurations:Debug"

		runtime "Debug"

		symbols "on"



	filter "configurations:Release"

		runtime "Release"

		optimize "on"
