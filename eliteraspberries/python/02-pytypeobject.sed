/extern PyTypeObject .*;$/ {
    s/, \([^,]*\);/;\
extern PyTypeObject \1;/g
}
