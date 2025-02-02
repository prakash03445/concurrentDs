file(GLOB SOURCES examples/test_*.cpp)

foreach(SRC_FILE ${SOURCES})
    get_filename_component(TEST_NAME ${SRC_FILE} NAME_WE)
    string(REPLACE "test_" "" LIB_NAME ${TEST_NAME})

    add_executable(${TEST_NAME} ${SRC_FILE})
    target_link_libraries(${TEST_NAME} PRIVATE ${LIB_NAME})
endforeach()
