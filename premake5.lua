project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect  "C++latest"

	targetdir (libOutputDir)
    objdir (IntermediatesOutputDir)

	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h",
		"include/yaml-cpp/*.cppm",
		"*.lua",
	}

	defines
	{
		"YAML_CPP_STATIC_DEFINE"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "Off"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "Off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

	filter "configurations:Dist"
		runtime "Release"
		optimize "Speed"
        symbols "Off"
