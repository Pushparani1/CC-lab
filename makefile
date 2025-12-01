CC = cc
Target = calculator
sources = main.c config.c io.c logger.c math_ops.c utils.c
OBJECT = $(sources:.c=.o)

all: $(Target)

$(Target): $(OBJECT)
	$(CC) -o $(Target) $(OBJECT)

%.o: %.c
	$(CC) -c $< -o $@

run: $(Target)
	./$(Target)

clean:
	rm -f $(Target) $(OBJECT)

docker-build:
	docker build -t calculator .

docker-run: docker-build
	docker run --rm -it calculator

.PHONY: all run clean docker-build docker-run

