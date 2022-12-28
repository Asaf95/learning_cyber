import itertools
import string
import getpass

# print(36 +36*36) # Number of options for password 99 (all optsion with **)
def guess_password(real):
    chars = string.ascii_lowercase + string.digits
    attempts = 0
    for password_length in range(1, 9):
        for guess in itertools.product(chars, repeat=password_length): # https://www.geeksforgeeks.org/python-itertools-product/
            attempts += 1
            guess = ''.join(guess)
            # print(f'---- guess number: {attempts} guess value: {guess}')
            if guess == real:
                return 'password is {}. found in {} guesses.'.format(guess, attempts)
            # uncomment to display attempts, though will be slower
            #print(guess, attempts)

# print(guess_password('99'))
print(guess_password(getpass.getpass()))
