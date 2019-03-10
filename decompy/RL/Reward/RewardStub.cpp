#include "RewardStub.h"

int RewardFunction::calcReward(char* original, char* changed, char* goal) {
    return 12;
}

int calcReward(char* original, char* changed, char* goal) {
    return RewardFunction::calcReward(original, changed, goal);
}

