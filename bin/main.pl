#!/usr/bin/env perl

sub SieveOfEratosthenes
{
  my $n = shift;
    # Create a boolean array "prime[0..n]" and initialize
    # all entries it as true. A value in prime[i] will
    # finally be false if i is Not a prime, else true.
    my @prime = [];
    for(my $i=0; $i<($n+1); $i++)
    {
      push(@prime, 1);
    }

    for (my $p=2; $p*$p<=$n; $p++)
    {
        # If prime[p] is not changed, then it is a prime
        if ($prime[$p] == 1)
        {
            # Update all multiples of p greater than or
            # equal to the square of it
            # numbers which are multiple of p and are
            # less than p^2 are already been marked.
            for (my $i=$p*$p; $i<=$n; $i += $p)
            {
                  $prime[$i] = 0;
            }
        }
    }

    print "[OUTPUT] ";
    # Print all prime numbers
    for (my $p=2; $p<=$n; $p++) {
       if ($prime[$p] == 1) {
          printf("%d ", $p);
       }
    }
    print "\n";
}

# Driver Program to test above function
sub main
{
    $input = 10;
    printf("[INPUT] %d\n", $input);
    &SieveOfEratosthenes($input);
}
&main;
