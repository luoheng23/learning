

// PyObject
#define PyObject_HEAD \
    int refCount;
    struct tagPyTypeObject * type
#define PyObject_HEAD_INIT(typePtr)\
    0, typePtr

typedef struct tagPyObject
{
    PyObject_HEAD;
}PyObject;

// PyTypeObject
typedef void (*PrintFun)(PyObject* object);
typedef PyObject* (*AddFun)(PyObject* left, PyObject* right);
typedef long (*HashFun)(PyObject* object);

typedef struct tagPyTypeObject
{
    PyObject_HEAD;
    char* name;
    PrintFun print;
    AddFun add;
    HashFun hash
}PyTypeObject;

// PyIntObject
typedef struct tagPyIntObject
{
    PyObject_HEAD;
    int value;
}PyIntObject;

PyObject* PyInt_Create(int value)
{
    PyIntObject* object = new PyIntObject;
    object->refCount = 1;
    object->type = &PyInt_Type;
    object->value = value;
    return (PyObject*)object;
}

static void int_print(PyObject* object)
{
    PyIntObject* intObject = (PyIntObject*)object;
    printf("%d\n", intObject->value);
}

static PyObject* int_add(PyObject* left, PyObject* right);
{
    PyIntObject* leftInt = (PyIntObject*)left;
    PyIntObject* rightInt = (PyIntObject*)right;
    PyIntObject* result = (PyIntObject*)PyInt_Create(0);
    if (result == NULL)
    {
        printf("We have no enough memory!!");
        exit(1);
    }
    else
    {
        result->value = leftInt->value + rightInt->value;
    }
    return (PyObject*)result;
}

static long int_hash(PyObject* object)
{
    return (long)((PyIntObject*)object)->value;
}

PyTypeObject PyInt_Type = 
{
    PyObject_HEAD_INIT(&PyType_Type),
    "int",
    int_print,
    int_add,
    int_hash,
};

// PyStrObject
typedef struct tagPyStrObject
{
    PyObject_HEAD;
    int length;
    long hashValue;
    char value[50];
}PyStringObject;

PyObject* PyStr_Create(const char* value)
{
    PyStringObject* object = new PyStringObject;
    object->refCount = 1;
    object->type = &PyString_Type;
    object->length = (value == NULL) ? 0 : strlen(value);
    object->hashValue = -1;
    memset(object->value, 0, 50);
    if (value != NULL)
    {
        strcpy(object->value, value);
    }
    return (PyObject*)object;
}

static void string_print(PyObject* object)
{
    PyStringObject* strObject = (PyStringObject*)object;
    printf("%s\n", strObject->value);
}

static long string_hash(PyObject* object)
{
    PyStringObject* strObject = (PyStringObject*)object;
    int len;
    unsigned char *p;
    long x;
    if (strObject->hashValue != -1)
    {
        return strObject->hashValue;
    }
    len = strObject->length;
    p = (unsigned char *)strObject->value;
    x = *p << 7;
    while (--len >= 0)
    {
        x = (1000003*x) ^ *p++;
    }
    x ^= strObject->length;
    if (x == -1)
    {
        x = -2;
    }
    strObject->hashValue = x;
    return x;
}

static PyObject* string_add(PyObject* left, PyObject* right)
{
    PyStringObject* leftStr = (PyStringObject*)left;
    PyStringObject* rightStr = (PyStringObject*)right;
    PyStringObject* result = (PyStringObject*)PyStr_Create(NULL);
    if (result == NULL)
    {
        printf("We have no enough memory!!")
        exit(1)
    }
    else
    {
        strcpy(result->value, leftStr->value);
        strcat(result->value, rightStr->value);
    }
    return (PyObject*)result;
}

PyTypeObject PyString_Type =
{
    PyObject_HEAD_INIT(&PyType_Type),
    "str",
    string_print,
    string_add,
    string_hash;
};

void ExcuteCommand(string& command)
{
    string::size_type pos = 0;
    if((pos = command.find("print ")) != string::npos)
    {
        ExcutePrint(command.substr(6));
    }
    else if ((pos = command.find(" = ")) != string::npos)
    {
         string target = command.substr(0, pos);
         string source = command.substr(pos+3);
         ExcuteAdd(target, source);
    }
}

