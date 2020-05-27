data {
    real mu;
    real phi;
}

generated quantities {
    real neg_bin_disp = neg_binomial_2_rng (mu, phi);
    real poisson_disp = poisson_rng(neg_bin_disp);
}
