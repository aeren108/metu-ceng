#pragma once

#include <string>

#define MONOTONIC 0
#define INCREASING 1
#define DECREASING 2
#define NONMONOTONIC 3

struct SequenceInfo
{
    int seqNo;
    float min;
    float max;
    int length;
    float mean;
    float std;
    int type;
};

struct NetTestInfo
{
    std::string gateway;
    std::string mask;
    std::string ipv4;
    bool result;
};

void InitLogger();
void CloseLogger();
void WriteException(int lineno, int error);
void WriteNetTest(const NetTestInfo& nti);
void WriteSequence(const SequenceInfo& si);
void WriteIdentifiers(int identifiers);
std::string GetMonotonicityString(int montype);

