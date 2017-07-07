##Press Ctrl+H then enter this file name and press enter

XX		=	g++

RM		=	rm -f

CXXFLAGS	=	-W -Wall -Wextra -Werror -Wshadow -Wunreachable-code -Wconversion
CXXFLAGS	+=	-Wswitch-default -Wswitch-enum
CXXFLAGS	+=	-Wuninitialized -Winit-self
CXXFLAGS	+=	-fstack-protector-strong
CXXFLAGS	+=	-pedantic
CXXFLAGS	+=	-march=native -save-temps

CPPFLAGS	=	-I include

LDFLAGS		=	-lm
LDFLAGS		+=	-lGL
LDFLAGS		+=	-lsfml-audio -lsfml-graphics -lsfml-network -lsfml-system -lsfml-window

CLASS_DIR	=	class
CLASS_SRC	=	\

SRC_DIR		=	src
SRC_FILES	=	$(addprefix $(CLASS_DIR)/, $(CLASS_SRC))	\
			main.cpp					\

SRCS		=	$(addprefix $(SRC_DIR)/, $(SRC_FILES))
SRCS_NAME	=	$(basename $(SRCS))
SRCS_TEMP	=	$(notdir $(SRCS_NAME).s $(SRCS_NAME).ii)

OBJS		=	$(SRCS:.cpp=.o)

NAME		=	o

all:		$(NAME)

$(NAME):	$(OBJS)
		$(XX) -o $(NAME) $(OBJS) $(LDFLAGS)

clean:
		$(RM) $(OBJS)
		$(RM) $(SRCS_TEMP)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re
