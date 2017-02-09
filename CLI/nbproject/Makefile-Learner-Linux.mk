#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Learner-Linux
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/acyclic_selection.o \
	${OBJECTDIR}/ad_node.o \
	${OBJECTDIR}/ad_tree.o \
	${OBJECTDIR}/bayesian_network.o \
	${OBJECTDIR}/beam_search.o \
	${OBJECTDIR}/bfirst_initializer.o \
	${OBJECTDIR}/bic_scoring_function.o \
	${OBJECTDIR}/bn_structure.o \
	${OBJECTDIR}/dfs_initializer.o \
	${OBJECTDIR}/fas_initializer.o \
	${OBJECTDIR}/greedy_search.o \
	${OBJECTDIR}/greedy_selection.o \
	${OBJECTDIR}/independence_selection.o \
	${OBJECTDIR}/learner.o \
	${OBJECTDIR}/log_likelihood_calculator.o \
	${OBJECTDIR}/parent_set_selection.o \
	${OBJECTDIR}/permutation_set.o \
	${OBJECTDIR}/random_initializer.o \
	${OBJECTDIR}/score_cache.o \
	${OBJECTDIR}/sequential_selection.o \
	${OBJECTDIR}/simulated_annealing.o \
	${OBJECTDIR}/sparse_parent_bitwise.o \
	${OBJECTDIR}/sparse_parent_list.o \
	${OBJECTDIR}/sparse_parent_tree.o \
	${OBJECTDIR}/structure_optimizer.o \
	${OBJECTDIR}/swap_search.o \
	${OBJECTDIR}/tabu_search.o \
	${OBJECTDIR}/vary_node.o


# C Compiler Flags
CFLAGS=-march=native

# CC Compiler Flags
CCFLAGS=-std=c++0x -march=native
CXXFLAGS=-std=c++0x -march=native

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/usr/local/lib -lboost_system -lboost_thread -lboost_chrono -lboost_timer -lboost_program_options -lboost_serialization

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/Learner/GNU-Linux/bn_learning

${CND_DISTDIR}/Learner/GNU-Linux/bn_learning: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/Learner/GNU-Linux
	${LINK.cc} -o ${CND_DISTDIR}/Learner/GNU-Linux/bn_learning ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/acyclic_selection.o: acyclic_selection.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/acyclic_selection.o acyclic_selection.cpp

${OBJECTDIR}/ad_node.o: ad_node.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ad_node.o ad_node.cpp

${OBJECTDIR}/ad_tree.o: ad_tree.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ad_tree.o ad_tree.cpp

${OBJECTDIR}/bayesian_network.o: bayesian_network.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/bayesian_network.o bayesian_network.cpp

${OBJECTDIR}/beam_search.o: beam_search.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/beam_search.o beam_search.cpp

${OBJECTDIR}/bfirst_initializer.o: bfirst_initializer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/bfirst_initializer.o bfirst_initializer.cpp

${OBJECTDIR}/bic_scoring_function.o: bic_scoring_function.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/bic_scoring_function.o bic_scoring_function.cpp

${OBJECTDIR}/bn_structure.o: bn_structure.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/bn_structure.o bn_structure.cpp

${OBJECTDIR}/dfs_initializer.o: dfs_initializer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/dfs_initializer.o dfs_initializer.cpp

${OBJECTDIR}/fas_initializer.o: fas_initializer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/fas_initializer.o fas_initializer.cpp

${OBJECTDIR}/greedy_search.o: greedy_search.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/greedy_search.o greedy_search.cpp

${OBJECTDIR}/greedy_selection.o: greedy_selection.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/greedy_selection.o greedy_selection.cpp

${OBJECTDIR}/independence_selection.o: independence_selection.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/independence_selection.o independence_selection.cpp

${OBJECTDIR}/learner.o: learner.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/learner.o learner.cpp

${OBJECTDIR}/log_likelihood_calculator.o: log_likelihood_calculator.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/log_likelihood_calculator.o log_likelihood_calculator.cpp

${OBJECTDIR}/parent_set_selection.o: parent_set_selection.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/parent_set_selection.o parent_set_selection.cpp

${OBJECTDIR}/permutation_set.o: permutation_set.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/permutation_set.o permutation_set.cpp

${OBJECTDIR}/random_initializer.o: random_initializer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/random_initializer.o random_initializer.cpp

${OBJECTDIR}/score_cache.o: score_cache.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/score_cache.o score_cache.cpp

${OBJECTDIR}/sequential_selection.o: sequential_selection.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/sequential_selection.o sequential_selection.cpp

${OBJECTDIR}/simulated_annealing.o: simulated_annealing.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/simulated_annealing.o simulated_annealing.cpp

${OBJECTDIR}/sparse_parent_bitwise.o: sparse_parent_bitwise.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/sparse_parent_bitwise.o sparse_parent_bitwise.cpp

${OBJECTDIR}/sparse_parent_list.o: sparse_parent_list.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/sparse_parent_list.o sparse_parent_list.cpp

${OBJECTDIR}/sparse_parent_tree.o: sparse_parent_tree.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/sparse_parent_tree.o sparse_parent_tree.cpp

${OBJECTDIR}/structure_optimizer.o: structure_optimizer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/structure_optimizer.o structure_optimizer.cpp

${OBJECTDIR}/swap_search.o: swap_search.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/swap_search.o swap_search.cpp

${OBJECTDIR}/tabu_search.o: tabu_search.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/tabu_search.o tabu_search.cpp

${OBJECTDIR}/vary_node.o: vary_node.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O3 -s -I/usr/local/include -I/usr/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/vary_node.o vary_node.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/Learner/GNU-Linux/bn_learning

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
