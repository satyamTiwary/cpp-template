if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    message(STATUS "Setting build type to 'RelWithDebInfo' as none was specified.")
    set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Choose the type of build." FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()


# CCACHE for accelerated Rebuilds
find_program(CCACHE ccache)
if(CCACHE)
    message("using ccache")
    set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE})
else()
    message("ccache not found. Cannot Use.")
endif()


# Generate compile_commands.json to work with clang tools such as SourseTrails
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


# Link time optimzation
option(ENABLE_IPO
    "Enable Interprocedural Optimization, aka Link Optimization (LTO)" OFF
)

if(ENABLE_IPO)
    include(CheckIPOSupported)
    check_ipo_supported(RESULT result OUTPUT output)
    if(result)
        set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
    else()
        message(SEND_ERROR "IPO is not supported. ${output}")
    endif()
endif()
