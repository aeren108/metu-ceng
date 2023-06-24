#ifndef PKT_H
#define PKT_H

#include<time.h>

#define PKT_SIZE 16
#define MAX_SEQ_NUM 63// starting from zero

#define TIMEOUT 1 //seconds

typedef struct packet packet;

struct packet {
    double timestamp;
    unsigned char seq; //first byte for sequence number
    char data[15]; //rest of bytes is for data
};

packet read_pkt(char buf[16]);

void prep_pkt(packet pkt, char buf[16]);

int is_ack(packet pkt);

void prep_ack(char seq, char buf[16]);

void prep_bye(packet *pkt);

int is_bye(packet pkt);

#endif