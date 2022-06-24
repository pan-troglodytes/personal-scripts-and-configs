/* see license file for copyright and license details. */

#define max(a, b)               ((a) > (b) ? (a) : (b))
#define min(a, b)               ((a) < (b) ? (a) : (b))
#define between(x, a, b)        ((a) <= (x) && (x) <= (b))

void die(const char *fmt, ...);
void *ecalloc(size_t nmemb, size_t size);
