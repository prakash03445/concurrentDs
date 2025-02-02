file(GLOB SOURCES "src/*.cpp")

foreach(SRC_FILE ${SOURCES})
    # get file name without extension
    get_filename_component(TARGET_NAME ${SRC_FILE} NAME_WE)

    # create a shared library
    add_library(${TARGET_NAME} SHARED ${SRC_FILE})

    target_include_directories(${TARGET_NAME} PUBLIC include)
endforeach()

