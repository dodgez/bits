BIN_DIR = ./bin
SRC_DIR = ./src
TARGET = $(BIN_DIR)/main.out

run: build
	$(TARGET)

build: $(TARGET)

$(TARGET): $(SRC_DIR)/main.v
	iverilog -o $@ $^

clean:
	rm bin/*
