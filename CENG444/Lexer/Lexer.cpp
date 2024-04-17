#include <iostream>
#include <sstream>
#include <bitset>
#include <algorithm>
#include <cmath>

#include "FlexLexer.h"
#include "Lexer.h"
#include "Error.h"

Lexer::Lexer()
{
    lineno = 1;
    curSequnce = 0;

    sequences.push_back(std::vector<float>());
}

void Lexer::ReportToken(const char *label)
{
   std::cout << "Recognized " << label << "(" << YYText() << ") line:" << yylineno << std::endl;
}

void Lexer::HandleNumber(float num)
{
    std::cout << "Read number: " << num << std::endl; 
}

void Lexer::HandleIPv4(const char *addr)
{
    std::cout << "Read IPv4 Address: " << addr << std::endl;
}

void Lexer::AddNumber(float num)
{
    std::cout << "Read number: " << num << std::endl;
    sequences[curSequnce].push_back(num);
}

void Lexer::ResetSequence()
{
    SaveSequence(curSequnce);
    sequences.push_back(std::vector<float>());
    curSequnce++;
}

void Lexer::TestAddress(const char *addr)
{
    std::cout << "Ip adress after address: " << addr << std::endl;
    try
    {
        unsigned int addri = AddrToInt(addr);
        NetTestInfo nti;
        nti.gateway = gatewayString;
        nti.mask = maskString;
        nti.ipv4 = addr;
        nti.result = false;

        if (!isMaskSet || !isGatewaySet)
        {
            WriteException(lineno, INVALID_CONFIGURATION_ERROR);
        }
        
        if ((mask & gateway) == (mask & addri)) //if true, address is in the subnet
        {
            //todo: write log
            
            nti.result = true;
        }

        netTestInfos.push_back(nti);
    }
    catch (const int error)
    {
        WriteException(lineno, error);
    }
    
}

void Lexer::SetGateway(const char *addr)
{
    std::cout << "Ip adress after gateway: " << addr << std::endl;
    try
    {
        gateway = AddrToInt(addr);
        gatewayString = addr;
        isGatewaySet = true;
    }
    catch (const int error)
    {
        WriteException(lineno, error);
    }

}

void Lexer::SetMask(const char *addr)
{
    std::cout << "Ip adress after mask: " << addr << std::endl;
    try
    {
        mask = AddrToInt(addr);
        if (IsMaskValid(mask))
        {
            maskString = addr;
            isMaskSet = true;
        }
        else
        {
            WriteException(lineno, INVALID_MASK_ERROR);
        }
    }
    catch(const int error)
    {
        WriteException(lineno, error);
    }
}

void Lexer::NextLine()
{
    lineno++;
}

void Lexer::AddIdentifier()
{
    identifiers++;
}

void Lexer::GetSequences()
{
    for (int i = 0; i < sequences.size(); ++i)
    {
        std::cout << "Sequence " << i << ": ";
        for (int j = 0; j < sequences[i].size(); ++j)
        {
            std::cout << sequences[i][j] << ", ";
        }

        std::cout << std::endl;
    }

    std::cout << "Identifier count: " << identifiers << std::endl;
}

void Lexer::SaveSequence(int index)
{   
    SequenceInfo si;
    si.seqNo = index + 1;
    if (sequences[index].empty())
    {
        si.length = 0;
        seqInfos.push_back(si);
        return;
    }

    si.min = *std::min_element(sequences[index].begin(), sequences[index].end());
    si.max = *std::max_element(sequences[index].begin(), sequences[index].end());
    si.length = sequences[index].size();
    si.mean = SequenceMean(index);
    si.std = SequenceStd(index);
    si.type = CheckMonotonicity(index);

    seqInfos.push_back(si);
}

float Lexer::SequenceStd(int index)
{
    double mean = SequenceMean(index);
    double sumSquaredDifferences = 0;
    
    for (float element : sequences[index])
        sumSquaredDifferences += pow(element - mean, 2);

    double variance = sumSquaredDifferences / sequences[index].size();

    return sqrt(variance);
}

float Lexer::SequenceMean(int index)
{
    float sum = 0;
    for (float n : sequences[index]) sum += n;
    return sum / sequences[index].size();
}

int Lexer::CheckMonotonicity(int index)
{   
    bool increasing = true;
    bool decreasing = true;

    float min = *std::min_element(sequences[index].begin(), sequences[index].end());
    float max = *std::max_element(sequences[index].begin(), sequences[index].end());

    if (min == max) 
        return MONOTONIC;
    
    for (int i = 1; i < sequences[index].size(); ++i) 
    {
        if (sequences[index][i] < sequences[index][i - 1]) 
            increasing = false;
        if (sequences[index][i] > sequences[index][i - 1])
            decreasing = false;
    }

    if (increasing && !decreasing) return INCREASING;
    else if (decreasing && !increasing) return DECREASING;
    else return NONMONOTONIC;
}

bool Lexer::IsMaskValid(unsigned int mask)
{
    if (mask == 0)
        return false;

    bool zeroBitFound = false;

    for (int i = 31; i >= 0; --i) {
        bool isBitSet = mask & (1u << i);

        if (zeroBitFound && isBitSet)
                return false;

        if (!isBitSet)
            zeroBitFound = true;
    }

    return true;
}

unsigned int Lexer::AddrToInt(const char *addr)
{
    unsigned int octets[4];
    std::stringstream ss(addr);
    std::string octet;
    int i = 0;
    while (std::getline(ss, octet, '.')) {
        octets[i++]= std::stoi(octet);
        if (octets[i - 1] > 255) throw IPV4_OVERFLOW_ERROR;
    }
    
    return (octets[0] << 24) | (octets[1] << 16) | (octets[2] << 8) | octets[3];
}

void Lexer::WriteOutputs()
{   
    if (seqInfos.size() < sequences.size()) 
        SaveSequence(curSequnce);

    for (SequenceInfo si : seqInfos)
        WriteSequence(si);
    
    for (NetTestInfo nti : netTestInfos)
        WriteNetTest(nti);

    WriteIdentifiers(identifiers);
}

void Lexer::LogError(int error)
{
    WriteException(lineno, error);
}

int Lexer::GetLineNumber()
{
    return lineno;
}