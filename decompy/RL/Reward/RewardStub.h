#ifndef CHESS_LIBRARY_H
#define CHESS_LIBRARY_H

class RewardFunction {
public:
    static int calcReward(char* original, char* changed, char* goal);
};

extern "C" {
    int calcReward(char* original, char* changed, char* goal);
}

#endif