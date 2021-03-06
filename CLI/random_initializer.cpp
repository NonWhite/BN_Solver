/* 
 * File:   RandomInitializer.cpp
 * Author: nonwhite
 * 
 * Created on 26 de enero de 2016, 04:31 PM
 */

#include <cstdlib>

#include "random_initializer.h"
#include "permutation_set_creator.h"
#include "utils.h"

initializers::RandomInitializer::RandomInitializer(){
	// Do nothing
}

initializers::RandomInitializer::RandomInitializer( std::vector<bestscorecalculators::BestScoreCalculator*> bestScoreCalculators ){
	this->variableCount = bestScoreCalculators.size() ;
	this->bestScoreCalculators = bestScoreCalculators ;
	this->gen = boost::mt19937( time( NULL ) ) ;
}

initializers::RandomInitializer::~RandomInitializer(){
	// Do nothing
}

structureoptimizer::PermutationSet* initializers::RandomInitializer::generate( int setType ){
	structureoptimizer::PermutationSet* set = structureoptimizer::createSet( setType , variableCount , bestScoreCalculators ) ;
	std::vector<int> permut = shuffle( set->getPermutation() , gen ) ;
	set->setPermutation( permut ) ;
	return set ;
}

void initializers::RandomInitializer::initialize(){
	// Do nothing
}