#pragma once

#include <vector>

#include "Logging.h"

class Lexer : public yyFlexLexer
{
public:
    Lexer();

    void ReportToken(const char *label);
    void HandleNumber(float num);
    void HandleIPv4(const char *addr);

    void AddNumber(float num);
    void ResetSequence();
    void TestAddress(const char *addr);
    void SetMask(const char *addr);
    void SetGateway(const char *addr);

    void NextLine();
    void AddIdentifier();
    void GetSequences();

    void WriteOutputs();
    void LogError(int error);

    int GetLineNumber();

private:
    void SaveSequence(int index);
    float SequenceStd(int index);
    float SequenceMean(int index);
    bool IsMaskValid(unsigned int mask);
    int CheckMonotonicity(int index);
    unsigned int AddrToInt(const char *addr);

    unsigned int lineno;
    unsigned int identifiers;
    unsigned int curSequnce;

    unsigned int gateway;
    unsigned int mask;
    std::string gatewayString;
    std::string maskString;
    
    bool isGatewaySet = false;
    bool isMaskSet = false;

    std::vector<std::vector<float> > sequences;
    std::vector<SequenceInfo> seqInfos;
    std::vector<NetTestInfo> netTestInfos;
};
