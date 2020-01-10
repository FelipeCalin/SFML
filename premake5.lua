group "SFML"

project "sfml-audio"

    kind "StaticLib"
	language "C++"

    location "build/projects"

	targetdir ("bin/" .. outputdir .. "/" )
	objdir ("bin-int/" .. outputdir .. "/" )


	files
	{
        "include/SFML/Audio/*.h", 
        "src/SFML/Audio/*.cpp" 
    }
    
    includedirs 
    {
        "include", 
        "src", 
        "extlibs/headers/AL",
        "extlibs/headers" 
    }

    libdirs 
    { 
        "extlibs/libs-msvc-universal/x64"
    }

    links 
    { 
        "opengl32.lib",
        "sfml-system",
        "openal32",
        "flac",
        "vorbisenc",
        "vorbisfile",
        "vorbis",
        "ogg"
    }

    defines 
    {
        "SFML_STATIC"
    }

    filter "configurations:Debug"

        targetname ("sfml-audio-s-d")
        buildoptions "/MDd"
        symbols "on"
        
        defines 
        { 
            "DEBUG=1", 
            "_DEBUG=1" 
        }


    filter "configurations:Release"

        targetname ("sfml-audio-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }
    

    filter "configurations:Dist"

        targetname ("sfml-audio-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }
        
        
    filter "system:windows"
        
		systemversion "latest"
		staticruntime "On"
        
        
		files
		{

        }
        
        includedirs 
        { 
            "extlibs/headers/libsndfile/windows" 
        }
        
		defines 
		{ 
            "WIN32", 
            "_WIN32"
        }
        

    filter "system:macos"

        includedirs 
        { 
            "extlibs/headers/libsndfile/osx" 
        }

        defines 
        { 
            "MACOSX" 
        }
        

    filter "system:linux"
        
        systemversion "latest"
        staticruntime "On"

        files
        {

        }

        defines
        {
            "LINUX" 
        }

--==========SFML Graphics==========--

project "sfml-graphics"

    kind "StaticLib"
    language "C++"

    location "build/projects"

    targetdir ("bin/" .. outputdir .. "/" )
	objdir ("bin-int/" .. outputdir .. "/" )


    files
    {
        "src/SFML/Graphics/*.cpp" 
    }

    includedirs 
    { 
        "include", 
        "src", 
        "extlibs/headers/stb_image", 
        "extlibs/headers/glad/include", 
        "extlibs/headers/freetype2"  
    }

    libdirs 
    { 
        "extlibs/libs-msvc-universal/x64"
    }

    links 
    { 
        "sfml-window",
        "sfml-system",
        "opengl32",
        "freetype"
    }

    defines 
    {
        "SFML_STATIC",
        "GLEW_STATIC", 
        "STBI_FAILURE_USERMSG" 
    }

    filter "configurations:Debug"

        targetname ("sfml-graphics-s-d")
        buildoptions "/MDd"
        symbols "on"
        
        defines 
        { 
            "DEBUG=1", 
            "_DEBUG=1" 
        }


    filter "configurations:Release"

        targetname ("sfml-graphics-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }
    

    filter "configurations:Dist"

        targetname ("sfml-audio-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }
        
        
    filter "system:windows"
        
        systemversion "latest"
        staticruntime "On"
        
        
        files
        {
            
        }

        includedirs 
        { 
            "extlibs/headers/libfreetype/windows" 
        }
        
        defines 
        { 
            "WIN32", 
            "_WIN32",
            "_CRT_SECURE_NO_WARNINGS" 
        }
        

    filter "system:macos"

        includedirs 
        { 
            "extlibs/headers/libfreetype/osx" 
        }

        defines 
        { 
            "MACOSX" 
        }
        

    filter "system:linux"
        
        systemversion "latest"
        staticruntime "On"

        files
        {

        }

        defines
        {
            "LINUX" 
        }

--==========SFML Network==========--

project "sfml-network"

    kind "StaticLib"
    language "C++"

    location "build/projects"

    targetdir ("bin/" .. outputdir .. "/" )
	objdir ("bin-int/" .. outputdir .. "/" )


    files
    {
        "src/SFML/Network/*.cpp" 
    }

    includedirs 
    { 
        "include", 
        "src" 
    }

    libdirs 
    { 
        "extlibs/libs-msvc-universal/x64"
    }

    links 
    { 
        "sfml-system",
        "ws2_32"
    }

    defines 
    {
        "SFML_STATIC"
    }

    filter "configurations:Debug"

        targetname ("sfml-network-s-d")
        buildoptions "/MDd"
        symbols "on"
        
        defines 
        { 
            "DEBUG=1", 
            "_DEBUG=1" 
        }


    filter "configurations:Release"

        targetname ("sfml-network-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }


    filter "configurations:Dist"

        targetname ("sfml-audio-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }
        
        
    filter "system:windows"
        
        systemversion "latest"
        staticruntime "On"
        
        
        files
        {
            "src/SFML/Network/Win32/*.cpp" 
        }
        
        defines 
        { 
            "WIN32", 
            "_WIN32"
        }
        

    filter "system:macos"

        files
        {
            "src/SFML/Network/Unix/*.cpp" 
        }

        defines 
        { 
            "MACOSX" 
        }
        

    filter "system:linux"
        
        systemversion "latest"
        staticruntime "On"

        files
        {
            "src/SFML/Network/Unix/*.cpp" 
        }

        defines
        {
            "LINUX" 
        }

--==========SFML System==========--

project "sfml-system"

    kind "StaticLib"
    language "C++"

    location "build/projects"

    targetdir ("bin/" .. outputdir .. "/" )
	objdir ("bin-int/" .. outputdir .. "/" )


    files
    {
        "src/SFML/System/*.cpp" 
    }

    includedirs 
    { 
        "include", 
        "src" 
    }

    libdirs 
    { 
        "extlibs/libs-msvc-universal/x64"
    }

    links 
    { 
        "winmm"
    }

    defines 
    {
        "SFML_STATIC"
    }

    filter "configurations:Debug"

        targetname ("sfml-system-s-d")
        buildoptions "/MDd"
        symbols "on"
        
        defines 
        { 
            "DEBUG=1", 
            "_DEBUG=1" 
        }


    filter "configurations:Release"

        targetname ("sfml-system-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }


    filter "configurations:Dist"

        targetname ("sfml-audio-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }
        
        
    filter "system:windows"
        
        systemversion "latest"
        staticruntime "On"
        
        
        files
        {
            "src/SFML/System/Win32/*.cpp" 
        }
        
        defines 
        { 
            "WIN32", 
            "_WIN32"
        }
        

    filter "system:macos"

        files
        {
            "src/SFML/System/Unix/*.cpp" 
        }

        defines 
        { 
            "MACOSX" 
        }
        

    filter "system:linux"
        
        systemversion "latest"
        staticruntime "On"

        files
        {
            "src/SFML/System/Unix/*.cpp" 
        }

        defines
        {
            "LINUX" 
        }

--==========SFML Window==========--

project "sfml-window"

    kind "StaticLib"
    language "C++"

    location "build/projects"

    targetdir ("bin/" .. outputdir .. "/" )
	objdir ("bin-int/" .. outputdir .. "/" )


    files
    {
        "src/SFML/Window/*.cpp" 
    }

    includedirs 
    { 
        "include", 
        "src",
        "extlibs/headers/vulkan",
        "extlibs/headers/glad/include" 
    }

    libdirs 
    { 
        "extlibs/libs-msvc-universal/x64"
    }

    links 
    { 
        "sfml-system",
        "opengl32",
        "winmm",
        "gdi32"
    }

    defines 
    {
        "SFML_STATIC"
    }

    filter "configurations:Debug"

        targetname ("sfml-window-s-d")
        buildoptions "/MDd"
        symbols "on"
        
        defines 
        { 
            "DEBUG=1", 
            "_DEBUG=1" 
        }


    filter "configurations:Release"

        targetname ("sfml-window-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }


    filter "configurations:Dist"

        targetname ("sfml-audio-s")
        buildoptions "/MD"
        optimize "on"

        defines 
        { 
            "NDEBUG" 
        }
        
        
    filter "system:windows"
        
        systemversion "latest"
        staticruntime "On"
        
        
        files
        {
            "src/SFML/Window/Win32/*.cpp"
        }
        
        defines 
        { 
            "WIN32", 
            "_WIN32"
        }
        

    filter "system:macos"

        files
        {
            "src/SFML/Window/OSX/*.cpp"
        }

        defines 
        { 
            "MACOSX" 
        }
        

    filter "system:linux"
        
        systemversion "latest"
        staticruntime "On"

        files
        {
            "src/SFML/Window/Linux/*.cpp" 
        }

        defines
        {
            "LINUX" 
        }
        
--==========SFML Main==========--
        



project "sfml-main"

    location "build/projects"
    language "C++"
    kind "StaticLib"

    targetdir ("bin/" .. outputdir .. "/" )
	objdir ("bin-int/" .. outputdir .. "/" )

    --source files depend on target machine
    --files { "src/SFML/Main/*.cpp" }

    includedirs 
    { 
        "include", 
        "src" 
    }


    filter "configurations:Debug"

        targetname "sfml-main-d"

        buildoptions "/MDd"
    
        defines 
        { 
            "DEBUG=1", 
            "_DEBUG=1" 
        }

        flags 
        { 
            "Symbols" 
        }



    filter "configurations:Release"

        targetname "sfml-main"

        buildoptions "/MD"

        defines 
        { 
            "NDEBUG" 
        }

        flags 
        { 
            "Optimize" 
        }



    filter "configurations:Release"

        targetname "sfml-main"

        buildoptions "/MD"

        defines 
        { 
            "NDEBUG" 
        }

        flags 
        { 
            "Optimize" 
        }



    filter "system:windows"

        files
        {
            "src/SFML/Main/MainWin32.cpp"
        }

        defines 
        { 
            "WIN32", 
            "_WIN32" 
        }



    filter "system:macos"

        files
        {
            "src/SFML/Main/MainiOS.mm"
        }

        defines { "MACOSX" }



    filter "system:linux"

        files
        {
            "src/SFML/Main/MainWin32.cpp"
        }

        defines { "LINUX" }

group ""