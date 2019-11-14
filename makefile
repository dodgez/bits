BIN_DIR = ./bin
SRC_DIR = ./src
TARGET = $(BIN_DIR)/main.out
SOURCES = $(SRC_DIR)/**/*.v $(SRC_DIR)/*.v

run: build
	$(TARGET)

build: $(TARGET)

$(TARGET): $(SOURCES)
	iverilog -o $@ $^

clean:
	rm bin/*
