from random import randrange
import sys

def print_permutation(p):
	print(" ".join(str(i) for i in p))

# Uses the Fisher–Yates shuffle to generate a random permutation of degree n
def generate_random_permutation(n):
	p = [i for i in range(n)]
	for i in range(n):
		j = randrange(i, n)
		p[i], p[j] = p[j], p[i]
	return p

def generate_permutation_pair(n):
	print(n)
	p = generate_random_permutation(n)
	print_permutation(p)
	p = generate_random_permutation(n)
	print_permutation(p)

if __name__ == "__main__":
	if len(sys.argv) < 2:
		print("Please enter n as a command line argument")
		sys.exit()
	try:
		n = int(sys.argv[1])
	except ValueError:
		print("Please enter n as a base 10 integer")
		sys.exit()
	generate_permutation_pair(n)
