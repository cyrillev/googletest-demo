PROJECT(NoFlyListTest)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

################################
# GTest
################################
ADD_SUBDIRECTORY(gtest-1.6.0)
ENABLE_TESTING()
INCLUDE_DIRECTORIES(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})


ADD_DEFINITIONS("-std=c++11")
AUX_SOURCE_DIRECTORY(. SRC_LIST)


################################
# Unit Tests
################################
ADD_EXECUTABLE(${PROJECT_NAME} ${SRC_LIST})
TARGET_LINK_LIBRARIES(${PROJECT_NAME} NoFlyList gtest gtest_main)

ADD_TEST(NAME ${PROJECT_NAME} COMMAND ${PROJECT_NAME})


