#include "Error.h"

std::string GetErrorString(const int error)
{
    switch (error)
    {
        case IPV4_OVERFLOW_ERROR:
            return "One of the octets in the IPv4 address overflows.";
            break;
        case NO_IPV4_AFTER_ADDR_ERROR:
            return "An IPv4 address is expected after address keyword.";
            break;
        case NO_IPV4_AFTER_MASK_ERROR:
            return "An IPv4 address is expected after mask keyword.";
            break;
        case NO_IPV4_AFTER_GATEWAY_ERROR:
            return "An IPv4 address is expected after gateway keyword.";
            break;
        case UNRECOGNIZED_TOKEN_ERROR:
            return "Unrecognized token.";
            break;
        case INVALID_LINE_ERROR:
            return "Invalid line.";
            break;
        case INVALID_CONFIGURATION_ERROR:
            return "Gateway and mask must be set before an address test.";
            break;
        case INVALID_MASK_ERROR:
            return "Mask value is invalid.";
            break;
        default:
            return "";
            break;
    }
}