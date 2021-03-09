#Project makefile common

#命令
CC  =	gcc
CXX	=	g++
CP	=	cp -f
MV	=	mv -f
RM  =	rm -f

#路径
PATH_MAK    =   $(PJHOME)/mak
PATH_INC    =   $(PJHOME)/inc
PATH_SRC    =   $(PJHOME)/src
PATH_BIN    =   $(PJHOME)/bin
PATH_LIB    =   $(PJHOME)/lib

#参数路径
INC_OWN =   -I $(PATH_INC)
INC_DBS =

LIB_OWN =   -L $(PATH_LIB)
LIB_SYS =

#编译参数
CFLAGS      =   $(INC_OWN)      #C
CXXFLAGS    =   $(INC_OWN)      #C++

#规则
%.o:%.cpp
	$(CXX) -c $(CXXFLAGS) $<
%.o: %.c
	$(CC) -c $(CXXFLAGS )$<

#目标
.PHONY: clean
clean:
#	$(RM) *.o