data {
    real alpha;
    real mu;
}

generated quantities {
    real neg_bin_con = neg_binomial_rng (alpha, alpha/mu);
    real poisson_con = poisson_rng(neg_bin_con);
}
