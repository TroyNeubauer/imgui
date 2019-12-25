project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    systemversion "latest"

	targetdir ("../../../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../../../bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"./*.h",
		"./*.cpp"
	}

	filter "system:emscripten"

		defines
		{
			"IMGUI_DISABLE_FILE_FUNCTIONS"
		}
