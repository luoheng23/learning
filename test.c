
#include <stdio.h>

struct Node {
    int x;
    int y;
    int a[10];
};

void deal(struct Node *node) {
    node->x = 2;
    node->y = 2;
}

int main() {
    struct Node nodes;
    deal(&nodes);
    printf("%d %d \n", nodes.x, nodes.y);
    return 1;
}