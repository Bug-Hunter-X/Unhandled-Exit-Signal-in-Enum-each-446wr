# Unhandled Exit Signal in Elixir Enum.each
This example demonstrates an issue with using `Process.exit` inside `Enum.each` in Elixir.  When a process exits, it may not clean up resources properly, potentially leading to data loss and unexpected behavior. The solution showcases a more robust approach using a try/catch block or a different function to handle the termination.

## Bug
The `bug.ex` file contains code that attempts to iterate through a list, and exit if a specific condition is met. However, because this exit is not handled correctly, the process may exit prematurely, without properly cleaning up resources or completing tasks.

## Solution
The `bugSolution.ex` file provides a corrected version, gracefully handling the potential exit signal and preventing a sudden termination of the program.