CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -Isrc
SRC_DIR = src
OBJ_DIR = obj

SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
TARGET = clox

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

test: $(TARGET)
	@for file in test/*.lox; do \
		echo "Running $$file..."; \
		./$(TARGET) $$file; \
	done

clean:
	rm -rf $(OBJ_DIR) $(TARGET)

.PHONY: all clean test
