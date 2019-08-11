#include "combine.h"

void combine1(vec_ptr v, data_t *dest)
{
    long i;
    *dest = IDENT;
    for (i = 0; i < vec_length(v); i++)
    {
        data_t val;
        get_vec_element(v, i, &val);
        *dest = *dest OP val;
    }
}

void combine2(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);

    *dest = IDENT;
    for (i = 0; i < length; i++)
    {
        data_t val;
        get_vec_element(v, i, &val);
        *dest = *dest OP val;
    }
}

void combine3(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);
    data_t *data = v->data;

    *dest = IDENT;
    for (i = 0; i < length; i++)
    {
        *dest = *dest OP data[i];
    }
}

void combine4(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);
    data_t *data = v->data;
    data_t acc = IDENT;

    *dest = IDENT;
    for (i = 0; i < length; i++)
    {
        acc = acc OP data[i];
    }
    *dest = acc;
}

