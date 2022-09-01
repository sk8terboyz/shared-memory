## Shared Memory Example

This is code from a class I took a couple years ago where all code was developed on Linux servers.

This program was created to fulfill homework/classroom requirements, not professional development.

Old README/Explanation:

Shane Kennedy

The shm_open() function is used by other functions, such as mmap(), to refer to
the shared memory object. The parameters for shm_open() are the name, any flags
that may be needed, and the mode you want the file to have. The flags can be any,
or all, of the following flags: O_RDONLY, O_RDWR, O_CREAT, O_EXCL, and O_TRUNC.
It returns a file descriptor that associates with the shared memory object. The
ftruncate() function takes a file pointer and truncates the file to a specified
length. The parameters are set to be a file descriptor and the size of bytes
specified to truncate the file to. The mmap() function is used to map a file, or
device, into the memory. It takes the parameters of an address, the size, an
optional prot, any flags needed, the file descriptor specified, and finally an
optional integer to tell mmap() where to start (this will almost always be 0).
The prots that can be added would be PROT_READ, PROT_WRITE, PROT_EXEC, and
PROT_NONE. These are used to determine whether the data can be read, written,
executed, and accessed. The flags that are added are chosen from the list:
MAP_SHARED, MAP_PRIVATE, and MAP_FIXED. These are used to either share changes,
keep them private, or interpret the address exactly. Lastly, the shm_unlink()
function is used to remove an object that has been already created by shm_open().
It's only parameter is the name and is much like the more common close() function.
