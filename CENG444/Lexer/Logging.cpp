#include <fstream>
#include <iostream>

#include "Logging.h"
#include "Error.h"

std::ofstream seqfile;
std::ofstream netfile;
std::ofstream idnfile;
std::ofstream errfile;

void InitLogger()
{
    seqfile.open("sequences.txt", std::ios::trunc);
    netfile.open("nettests.txt", std::ios::trunc);
    idnfile.open("identifiers.txt", std::ios::trunc);
    errfile.open("exceptions.txt", std::ios::trunc);
}

void CloseLogger()
{
    seqfile.close();
    netfile.close();
    idnfile.close();
    errfile.close();
}

void WriteSequence(const SequenceInfo& si)
{
    seqfile << "Sequence Number: " << si.seqNo << std::endl;
    if (si.length == 0)
    {
        seqfile << "Empty!" << std::endl;
        seqfile << std::endl;
        
        return;
    }

    seqfile << "Minimum: " << si.min << std::endl;
    seqfile << "Maximum: " << si.max << std::endl;
    seqfile << "Number of entries: " << si.length << std::endl;
    seqfile << "Average: " << si.mean << std::endl;
    seqfile << "Standard Deviation: " << si.std << std::endl;
    seqfile << "Is Monotonic: " << GetMonotonicityString(si.type) << std::endl;
    seqfile << std::endl;
}

void WriteNetTest(const NetTestInfo& nti)
{

    netfile << "M : " << nti.mask << " G : " << nti.gateway << " A : " << nti.ipv4 << " => " << (nti.result ? "in" : "out") << std::endl;

}

void WriteIdentifiers(int identifiers)
{
    
    idnfile << "The number of the identifiers detected is " << identifiers << std::endl;

}

void WriteException(int lineno, int error)
{

    errfile << lineno << ": " << GetErrorString(error) << std::endl;
}

std::string GetMonotonicityString(int mono)
{
    switch (mono) {
        case MONOTONIC:
            return "Yes";
        case INCREASING:
            return "Yes, increasing";
        case DECREASING:
            return "Yes, decreasing";
        case NONMONOTONIC:
            return "No";
        default:
            return "Unknown";
    }
}