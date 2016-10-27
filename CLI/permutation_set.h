/* 
 * File:   PermutationSet.h
 * Author: nonwhite
 *
 * Created on 26 de enero de 2016, 05:22 PM
 */

#ifndef PERMUTATIONSET_H
#define	PERMUTATIONSET_H

#include <vector>

#include "best_score_calculator.h"
#include "typedefs.h"

namespace datastructures {
	class BNStructure ;
}

namespace structureoptimizer {
	class PermutationSet {
		public :
			PermutationSet() ;
			PermutationSet( const PermutationSet &other ) ;
			~PermutationSet() ;

			int operator [] ( int idx ) const ;
			bool operator < ( PermutationSet &other ) const ;
			bool operator == ( PermutationSet &other ) const ;

			void swap( int idx1 , int idx2 ) ;

			float getScore() const ;
			bool isBetter( PermutationSet &other ) ;

			void setPermutation( std::vector<int> permutation ) ;
			std::vector<int> getPermutation() ;

			int size() const ;

			varset getVarset( int index ) ;

			std::vector<bestscorecalculators::BestScoreCalculator*> getBestScoreCalculators() const ;

			// Abstract methods
			virtual void print( bool printPermutation = false ) = 0 ;
			virtual PermutationSet* clone() = 0 ;
//			virtual datastructures::BNStructure* getStructure() = 0 ; // TODO: Implement and test this

		protected :
			void setScore( float score ) ;
			
			// Abstract methods
			virtual void updateScore( int adjacentPos = -1 ) = 0 ;

			std::vector<int> permutation ;
			std::vector<bestscorecalculators::BestScoreCalculator*> bestScoreCalculator ;
			float score ;
	} ;
}

#endif	/* PERMUTATIONSET_H */