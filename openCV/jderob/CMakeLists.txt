cmake_minimum_required(VERSION 2.8)
project( verySimpleCV )
find_package( OpenCV REQUIRED )



SET(CMAKE_INCLUDE_CURRENT_DIR ON)
SET(GCC_COVERAGE_COMPILE_FLAGS "-std=c++11")


MESSAGE( STATUS "OpenCV_INCLUDE_DIRS:         " ${OpenCV_INCLUDE_DIRS} )
MESSAGE( STATUS "jderobottypes_INCLUDE_DIRS:         " ${jderobottypes_INCLUDE_DIRS} )


include_directories( 
	${OpenCV_INCLUDE_DIRS} 
        ${Ice_INCLUDE_DIR}
        ${comm_INCLUDE_DIRS}
        ${config_INCLUDE_DIRS}
)
link_directories(
        ${comm_LIBRARY_DIRS}
        ${config_LIBRARY_DIRS}
)
add_executable( verySimpleCV simpleCV.cpp)
add_definitions(${GCC_COVERAGE_COMPILE_FLAGS})
target_link_libraries( verySimpleCV ${OpenCV_LIBS} 
        ${ZeroCIce_LIBRARIES}
        ${Ice_LIBRARIES}
        ${OpenCV_LIBRARIES}
        ${OpenCVGUI_LIBRARIES}
        ${comm_LIBRARIES}
        ${config_LIBRARIES}
        JderobotInterfaces
        jderobotutil
        colorspacesmm
        ${GLOG_LIBRARIES}
        ${ZLIB_LIBRARIES}


)
