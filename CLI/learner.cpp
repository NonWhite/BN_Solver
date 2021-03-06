/* 
 * File:   main.cpp
 * Author: nonwhite
 *
 * Created on 6 de diciembre de 2015, 10:32 AM
 */
#include <boost/program_options.hpp>

#include "learner_pselection.h"
#include "learner_structure.h"

namespace po = boost::program_options ;

//#include <dai/varset.h>
//#include <dai/index.h>
#include <iostream>

using namespace std;
//using namespace dai;
//
//int gg(){
//    Var x0(0, 2);   // Define binary variable x0 (with label 0)
//    Var x1(1, 3);   // Define ternary variable x1 (with label 1)
//
//    // Define set X = {x0, x1}
//    VarSet X; // empty
//    X |= x1;  // X = {x1}
//    X |= x0;  // X = {x1, x0}
//    cout << "X = " << X << endl << endl; // Note that the elements of X are ordered according to their labels
//
//    // Output some information about x0, x1 and X
//    cout << "Var " << x0 << " has " << x0.states() << " states (possible values)." << endl;
//    cout << "Var " << x1 << " has " << x1.states() << " states." << endl << endl;
//    cout << "VarSet " << X << " has " << X.nrStates() << " states (joint assignments of its variables)." << endl << endl;
//
//    cout << "States of VarSets correspond to states of their constituent Vars:" << endl;
//    cout << "  state of x0:   state of x1:   (linear) state of X:" << endl;
//    for( size_t s1 = 0; s1 < x1.states(); s1++ ) // for all states s1 of x1
//        for( size_t s0 = 0; s0 < x0.states(); s0++ ) { // for all states s0 of x0
//            // store s0 and s1 in a map "states"
//            map<Var,size_t> states;
//            states[x0] = s0;
//            states[x1] = s1;
//
//            // output states of x0, x1 and corresponding state of X
//            cout << "    " << s0 << "              " << s1 << "              " << calcLinearState(X,states) << endl;
//
//            // calcState() is the inverse of calcLinearState()
//            DAI_ASSERT( calcState(X, calcLinearState(X, states)) == states );
//        }
//
//    cout << endl << "And vice versa:" << endl;
//    cout << "  state of x0:   state of x1:   (linear) state of X:" << endl;
//    for( size_t S = 0; S < X.nrStates(); S++ ) { // for all (joint) states of X
//        // calculate states of x0 and x1 corresponding to state S of X
//        map<Var,size_t> states = calcState(X,S);
//
//        // output state of X and corresponding states of x0, x1
//        cout << "    " << states[x0] << "              " << states[x1] << "              " << S << endl;
//
//        // calcLinearState() is the inverse of calcState()
//        DAI_ASSERT( calcLinearState(X, calcState(X,S)) == S );
//    }
//
//    cout << endl << "Iterating over all joint states using the State class:" << endl;
//    cout << "  state of x0:   state of x1:   (linear) state of X:   state of X (as a map):" << endl;
//    for( State S(X); S.valid(); S++ ) {
//        // output state of X and corresponding states of x0, x1
//        cout << "    " << S(x0) << "              " << S(x1) << "              " << S << "                      " << S.get() << endl;
//    }
//
//    return 0;
//}

int main( int argc , char** argv ){
//	gg() ;
	po::options_description desc( getProgramDescription( argv[ 0 ] ) ) ;

	desc.add_options()
		( stepsToPerformShortCut.c_str() , po::value<int>(&stepsToPerform)->required()->default_value( stepsToPerformDefault ) , stepsToPerformString.c_str() )
		( datasetShortCut.c_str() , po::value<std::string> (&datasetFile), datasetFileString.c_str() )
		( scoresFileShortCut.c_str() , po::value<std::string> (&scoresFile)->required()->default_value( scoresFileDefault ) , scoresFileString.c_str() )
		( bnetFileShortCut.c_str() , po::value<std::string> (&bnetFile), bnetFileString.c_str() )
		( delimiterShortCut.c_str() , po::value<char> (&delimiter)->required()->default_value( delimiterDefault ), delimiterString.c_str() )
		( rMinShortCut.c_str() , po::value<int> (&rMin)->default_value( rMinDefault ), rMinString.c_str() )
		( maxParentsShortCut.c_str() , po::value<int> (&maxParents)->default_value( maxParentsDefault ) , maxParentsString.c_str() )
		( threadCountShortCut.c_str() , po::value<int> (&threadCount)->default_value( threadCountDefault ) , threadString.c_str() )
		( runningTimeShortCut.c_str() , po::value<int> (&runningTime)->default_value( runningTimeDefault ) , runningTimeString.c_str() )
		( hasHeaderShortCut.c_str() , hasHeaderString.c_str() )
		( endOfCalculatingPruningShortCut.c_str() , endOfCalculatingPruningString.c_str() )
		( whileCalculatingPruningShortCut.c_str() , whileCalculatingPruningString.c_str() )
		( selectionTypeShortCut.c_str() , po::value<std::string>(&selectionType)->default_value( selectionTypeDefault ) , parentselection::parentSetSelectionString.c_str() )
		( sfShortCut.c_str() , po::value<std::string>( &sf )->default_value( sfDefault ) , sfString.c_str() )
		( constraintsFileShortCut.c_str() , po::value<std::string>( &constraintsFile ) , constraintsFileString.c_str() )
		( structureOptimizerTypeShortCut.c_str() , po::value<std::string>(&structureOptimizerType)->required()->default_value( structureOptimizerTypeDefault) , structureOptimizerTypeString.c_str() )
		( bestScoreCalculatorShortCut.c_str() , po::value<std::string > (&bestScoreCalculator)->default_value( bestScoreCalculatorDefault ) , bestscorecalculators::bestScoreCalculatorString.c_str() )
		( initializerShortCut.c_str() , po::value<std::string > (&initializerType)->default_value( initializerTypeDefault ) , initializers::initializerTypeString.c_str() )
		( numSolutionsShortCut.c_str() , po::value<int> (&numSolutions)->default_value( numSolutionsDefault ) , numSolutionsString.c_str() )
		( timePerSolutionsShortCut.c_str() , po::value<int> ( &timePerSolution)->default_value( timePerSolutionDefault ) , timePerSolutionString.c_str() )
		( structureParametersFileShortCut.c_str() , po::value<std::string>(&structureParametersFile) , structureParametersFileString.c_str() )
		( "help,h" , "Show this help message." ) ;

	po::positional_options_description positionalOptions ;
//	positionalOptions.add( datasetShortCut.c_str() , 1 ) ;
	positionalOptions.add( bnetFileShortCut.c_str() , 1 ) ;

	po::variables_map vm ;
	po::store( po::command_line_parser( argc , argv )
				.options( desc )
				.positional( positionalOptions ).run() , vm ) ;

	if( vm.count( "help" ) || argc == 1 ){
		std::cout << desc ;
		return 0 ;
	}

	po::notify( vm ) ;

	hasHeader = vm.count( "hasHeader" ) ;
	endOfCalculatingPruning = vm.count( "endOfCalculatingPruning" ) ;
	whileCalculatingPruning = vm.count( "whileCalculatingPruning" ) ;

	if( threadCount < 1 ){
		threadCount = 1 ;
	}

	printf( " ============================== BN_LEARNING ============================== \n" ) ;
	printf( "Dataset file: '%s'\n" , datasetFile.size() == 0 ? "NO SPECIFIED" : datasetFile.c_str() ) ;
	printf( "Score file: '%s'\n" , scoresFile.c_str() ) ;
	printf( "Bnet file: '%s'\n" , bnetFile.size() == 0 ? "NO SPECIFIED" : bnetFile.c_str() ) ;

	if( stepsToPerform & PERFORM_SCORE_CALCULATION )
		calculateScore() ;
	if( stepsToPerform & PERFORM_STRUCTURE_LEARNING )
		structureLearning() ;
}