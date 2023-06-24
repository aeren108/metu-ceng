#include <stdlib.h>

#include "packet.h"

const char* ACK_STRING = "ACK\n\n\n";
const char* BYE_STRING = "BYE\n\n\n";
packet read_pkt(char buf[16]) {
    packet pkt;
    pkt.seq = buf[0];

    for (int i = 1; i < PKT_SIZE;  ++i) pkt.data[i-1] = buf[i];

    return pkt;
}

void prep_pkt(packet pkt, char buf[16]) {
    buf[0] = pkt.seq;
    for (int i = 1; i < PKT_SIZE; ++i) buf[i] = pkt.data[i-1];
}

int is_ack(packet pkt) {
    return strncmp(pkt.data, ACK_STRING, 7) == 0; 
}

void prep_ack(char seq, char buf[16]) {
    buf[0] = seq;
    strncpy(buf + 1, ACK_STRING, 7);
}

void prep_bye(packet *pkt) {
    pkt->seq = -1;
    strncpy(pkt->data, BYE_STRING, 7);
}

int is_bye(packet pkt) {
    return strncmp(pkt.data, BYE_STRING, 7) == 0; 
}
