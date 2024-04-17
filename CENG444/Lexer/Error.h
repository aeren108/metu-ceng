#pragma once

#include <string>

static const int UNRECOGNIZED_TOKEN_ERROR = 0;
static const int INVALID_LINE_ERROR = 1;
static const int IPV4_OVERFLOW_ERROR = 2;
static const int NO_IPV4_AFTER_ADDR_ERROR = 3;
static const int NO_IPV4_AFTER_MASK_ERROR = 4;
static const int NO_IPV4_AFTER_GATEWAY_ERROR = 5;
static const int INVALID_CONFIGURATION_ERROR = 6;
static const int INVALID_MASK_ERROR = 7;

std::string GetErrorString(const int error);

