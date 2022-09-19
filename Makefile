CC ?= cc
# oh god oh fuck im so fast oh shit oh fuck pizza 🍕🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀
CFLAGS ?= -Ofast -mtune=native -ffast-math -fno-math-errno -funsafe-math-optimizations -ffinite-math-only -fno-rounding-math -fno-signaling-nans -fexcess-precision=fast -fassociative-math -freciprocal-math -fno-signed-zeros -fomit-frame-pointer

TARGET := gpk.pizza.bin

.PHONY: all
all: $(TARGET)

$(TARGET): kernel.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -f $(TARGET)
