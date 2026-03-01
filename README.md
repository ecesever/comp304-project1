# comp304-project1 README
repo: https://github.com/ecesever/comp304-project1.git

Shell-ish is a Unix-style interactive shell implemented in the C programming language. The shell reads user commands, parses them, and executes them accordingly. External programs are executed by creating child processes using fork() and running them with execv(). Since execv() does not automatically resolve command paths, manual PATH resolution has been implemented to locate executable binaries within the system.

In addition to basic command execution, Shell-ish supports background processing. When a command ends with the & symbol, the shell launches the process and immediately returns to the prompt without waiting for the process to terminate. This allows multiple processes to run concurrently.

The shell also supports input and output redirection. The < operator redirects input from a file, > redirects output to a file (creating or truncating it), and >> appends output to an existing file. These redirections are implemented using the dup2() system call to manipulate file descriptors appropriately.

Piping functionality is implemented using the | operator, allowing the output of one command to serve as the input of another. This is achieved using the pipe(), fork(), and dup2() system calls to establish inter-process communication between child processes.

For Part III, additional built-in commands were implemented. The first is a simplified version of the UNIX cut command. This built-in reads lines from standard input and prints only selected fields. By default, fields are separated by a TAB character, but the delimiter can be changed using the -d option. The -f option allows specifying a comma-separated list of field indices to display.

Finally, a custom command named surprise was developed. Each time it is executed, it generates a random number using /dev/urandom and prints it to the screen. This command demonstrates the extensibility of the shell and adds a creative feature beyond the standard requirements.

The project was implemented and tested on a Linux environment. The submission includes the source code, a Makefile, this README file, and screenshots demonstrating all implemented features.
