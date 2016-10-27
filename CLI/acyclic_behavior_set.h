/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   acyclic_behavior_set.h
 * Author: nonwhite
 *
 * Created on October 25, 2016, 10:54 AM
 */

#ifndef ACYCLIC_BEHAVIOR_SET_H
#define ACYCLIC_BEHAVIOR_SET_H

#include "permutation_set.h"

namespace structureoptimizer {
	class AcyclicBehaviorSet : public PermutationSet {
		public :
			AcyclicBehaviorSet(){
				// Do nothing
			}

			AcyclicBehaviorSet( int size ,
						std::vector<bestscorecalculators::BestScoreCalculator*> &bestScoreCalculator ){
				boost::mt19937 gen( time( NULL ) ) ;
				for(int i = 0 ; i < size ; i++)
					permutation.push_back( i ) ;
				permutation = shuffle( permutation , gen ) ;
				this->bestScoreCalculator = bestScoreCalculator ;
				updateScore() ;
			}
			
			void print( bool printPermutation = false ){
				// TODO: Impleent this
			}

		private :
			void updateScore( int adjacentPos = -1 ){
				// TODO: implement this
			}
	} ;
}
#endif /* ACYCLIC_BEHAVIOR_SET_H */