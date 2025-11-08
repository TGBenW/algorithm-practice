## solution.py

def staircase(n: int) -> None:
    if n <= 0:
        return
    for i in range(1, n + 1):
        spaces = " " * (n - i)
        hashes = "#" * i
        print(spaces + hashes)

# --- demo run ---
if __name__ == "__main__":
    staircase(6)
    """
    Expected:
         #
        ##
       ###
      ####
     #####
    ######
    """