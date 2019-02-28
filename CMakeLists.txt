cmake_minimum_required(VERSION 2.8)
project( main )
find_package( OpenCV REQUIRED )

add_library(DetectLane pi_lane_detect.cpp)
install(TARGETS DetectLane DESTINATION lib)
install(FILES pi_lane_detect.h DESTINATION include)

add_library(raspi_uart_send raspi_uart_send.cpp)
install(TARGETS raspi_uart_send DESTINATION lib)
install(FILES raspi_uart_send.h DESTINATION include)
SET(GCC_COVERAGE_COMPILE_FLAGS "-lwiringPi")
SET(GCC_COVERAGE_LINK_FLAGS    "-lwiringPi")
SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}")

add_executable( main main.cpp )
target_link_libraries( main DetectLane ${OpenCV_LIBS} raspi_uart_send)
