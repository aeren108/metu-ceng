#include<stdio.h>
#include<stdlib.h>

typedef struct node {
    int val;
    struct node* left;
    struct node* right;
} node;

node* tighten(node*);

int main(int argc, char const *argv[])
{
    node *a, *b, *c, *d, *e, *f, *g, *h;
    a = malloc(sizeof(node));
    b = malloc(sizeof(node));
    c = malloc(sizeof(node));
    d = malloc(sizeof(node));
    e = malloc(sizeof(node));
    f = malloc(sizeof(node));
    h = malloc(sizeof(node));
    g = malloc(sizeof(node));
    
    a->val = 'a';
    b->val = 'b';
    c->val = 'c';
    d->val = 'd';
    e->val = 'e';
    f->val = 'f';
    g->val = 'g';
    h->val = 'h';

    a->left = b;
    a->right = c;
    b->right = NULL;
    b->left = d;
    d->left = e;
    d->right = f;
    c->right = NULL;
    c->left = g;
    g->left = NULL;
    g->right = h;


    a = tighten(a);
    print_tree(a);
    return 0;
}

node* tighten(node* root) {
    if (root == NULL) return NULL;
    if (root->left == NULL && root->right == NULL) return root;
    else if (root->left == NULL && root->right != NULL) {
        node* tmp = root->right;
        free(root);
        return tighten(tmp);
    } else if (root->left != NULL && root->right == NULL) {
        node* tmp = root->left;
        free(root);
        return tighten(tmp);
    } else {
        root->left = tighten(root->left);
        root->right = tighten(root->right);
        return root;
    }
}

void print_tree(node* n) {
    if (n == NULL) return;

    printf("%c ", n->val);
    
    print_tree(n->left);
    print_tree(n->right);
}
