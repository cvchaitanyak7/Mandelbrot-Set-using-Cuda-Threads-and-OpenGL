CC=/usr/local/cuda-7.0/bin/nvcc
LIBS= -lglut -lGL -lGLU
INCLUDES=-I./  
CCFLAGS= 
OBJECTS= MBSet.o

# --- targets
all:  MBSet
MBSet:	$(OBJECTS)
	$(CC) -o MBSet $(CCFLAGS) $(INCLUDES) $(OBJECTS) $(LIBS) 

MBSet.o: MBSet.cu
	$(CC) $(CCFLAGS) $(INCLUDES) -c MBSet.cu


clean:
	rm -f MBSet $(OBJECTS)
