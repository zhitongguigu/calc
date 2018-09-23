/*!*****************************************************************************
* @file   calc.h
*
*   Copyright (c) @2018 Ö±Í¨¹è¹È
*
* @brief  Calc interface
*
*******************************************************************************/

#ifndef __CALC_H_
#define __CALC_H_

#include <vector>
#include <memory>

class Calc
{
public:

    //
    // Instantiation function
    //
    static Calc* calcNew(char* path);

    //
    // Sum function. Should be called after the calc instantiation
    //
    int sum(int a, int b);

    //
    // Substract function.
    //
    int sub(int a, int b);

    //
    // Multiply function.
    //
    int mul();

    //
    // D-tor
    //
    ~Calc();

protected:
    
private:
    
};