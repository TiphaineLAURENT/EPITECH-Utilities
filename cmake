#!/bin/bash

make_n() {
    echo -e "CC\t\t=\tgcc" >> Makefile
    echo >> Makefile

    echo -e "RM\t\t=\trm -f" >> Makefile
    echo >> Makefile

    echo -e "CFLAGS\t\t=\t-W -Wall -Wextra -Werror -Wshadow" >> Makefile
    echo -e "#CFLAGS\t\t+=\t-fstack-protector-strong" >> Makefile
    echo >> Makefile

    echo -e "CPPFLAGS\t=\t-I include" >> Makefile
    echo >> Makefile

    if [[ "$libmy" == "o" ]] || [[ "$libmy" == "oui" ]];
    then
	echo -e "LDFLAGS\t\t+=\t-l my -L libs_srcs" >> Makefile
    fi

    if [[ "$libm" == "o" ]] || [[ "$libm" == "oui" ]];
    then
	echo -e "LDFLAGS\t\t+=\t-l my -L libs_srcs" >> Makefile
    fi

    if [[ "$libgraph" == "o" ]] || [[ "$libgraph" == "oui" ]];
    then
	echo -e "LDFLAGS\t\t+=\t-l my -L libs_srcs" >> Makefile
    fi
	
    echo >> Makefile

    echo "Source Directory:"
    read src_dir
    echo

    echo -e "SRC_DIR\t\t=\t$src_dir" >> Makefile

    echo -e "SRC_FILES\t=\tmain.c\t\\" >> Makefile
    echo >> Makefile

    echo -e "SRCS\t\t=\t\$(addprefix \$(SRC_DIR)/, \$(SRC_FILES))" >> Makefile
    echo >> Makefile

    echo -e "OBJS\t\t=\t\$(SRCS:.c=.o)" >> Makefile
    echo >> Makefile

    echo "Binary Name"
    read bin_name
    echo

    echo -e "NAME\t\t=\t$bin_name" >> Makefile
    echo >> Makefile

    echo -e "all:\t\t\$(NAME)" >> Makefile
    echo >> Makefile

    echo -e "\$(NAME):\t\$(OBJS)" >> Makefile

    if [[ "$lib" == "o" ]] || [[ "$lib" == "oui" ]];
    then
	echo -e "\t\t\$(CC) -o \$(NAME) \$(OBJS) \$(LDFLAGS)" >> Makefile
    else
	echo -e	"\t\t\$(CC) -o \$(NAME) \$(OBJS)" >> Makefile
    fi

    echo >> Makefile

    echo "clean:" >> Makefile
    echo -e "\t\t\$(RM) \$(OBJS)" >> Makefile
    echo >> Makefile

    echo -e "fclean:\t\tclean" >> Makefile
    echo -e "\t\t\$(RM) \$(NAME)" >> Makefile
    echo >> Makefile

    echo -e "re:\t\tfclean all" >> Makefile
    echo >> Makefile

    echo -e ".PHONY:\t\tall clean fclean re" >> Makefile
}

header()
{
    clear
    for i in $(eval echo "{1..$(tput cols)}"); do echo -n "T"; done
    echo
    echo
}

header

echo "##Press Ctrl+H then enter this file name and press enter" > Makefile
echo >> Makefile

echo "Does your Makefile needs the libmy ? : [o/n]"
read libmy
echo
libmy="${libmy,,}"

echo "Does your Makefile needs the math lib ? : [o/n]"
read libm
echo
libm="${libm,,}"

echo "Does your Makefile needs the graphical lib ? : [o/n]"
read libgraph
echo
libgraph="${libgraph,,}"

make_n
