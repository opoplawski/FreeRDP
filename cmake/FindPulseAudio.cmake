include(FindPkgConfig)

if (PKG_CONFIG_FOUND)
	pkg_check_modules(PULSEAUDIO libpulse)
endif()

find_path(PULSEAUDIO_INCLUDE_DIR pulseaudio.h PATHS ${PULSEAUDIO_INCLUDE_DIRS} PATH_SUFFIXES pulse )
find_library(PULSEAUDIO_LIBRARY pulse PATHS ${PULSEAUDIO_LIBRARY_DIRS})

FIND_PACKAGE_HANDLE_STANDARD_ARGS(PulseAudio DEFAULT_MSG PULSEAUDIO_INCLUDE_DIR PULSEAUDIO_LIBRARY)

mark_as_advanced(PULSEAUDIO_INCLUDE_DIR PULSEAUDIO_LIBRARY)