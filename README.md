# comp304-project1 README
repo: https://github.com/ecesever/comp304-project1.git

Shell-ish is a Unix-style interactive shell implemented in the C programming language. The shell reads user commands, parses them, and executes them accordingly. External programs are executed by creating child processes using fork() and running them with execv(). Since execv() does not automatically resolve command paths, manual PATH resolution has been implemented to locate executable binaries within the system.
