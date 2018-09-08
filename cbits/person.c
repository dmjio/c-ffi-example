#include <stdio.h>
#include <person.h>

Person * showPerson (Person * p) {
  printf("Name: %s\nAge: %d\n", p->name, p->age);
  return p;
}
