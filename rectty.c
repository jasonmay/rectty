#include <stdio.h>
#include <vterm.h>

int main(int argc, const char *argv[])
{
    VTerm *vt = vterm_new(80, 24);
    int cols, rows;
    vterm_get_size(vt, &cols, &rows);
    printf("%d columns, %d rows\n", cols, rows);
    vterm_free(vt);
    return 0;
}
