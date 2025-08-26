SRC_DIR = ./src
BUILD_DIR = build

SRCS = $(wildcard $(SRC_DIR)/*.cpp) \
       $(wildcard $(SRC_DIR)/backend/*.cpp) \
       $(wildcard $(SRC_DIR)/model/*.cpp) \
       $(wildcard $(SRC_DIR)/infer/*.cpp)

OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(SRCS))

muduo: $(OBJS)
	g++ $(OBJS) -O3 -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	g++ -O3 -std=c++17 -I. -I$(SRC_DIR)/model -I$(SRC_DIR)/backend -I$(SRC_DIR)/infer -c $< -o $@

-include $(OBJS:.o=.d)

clean:
	rm -rf $(BUILD_DIR) muduo
