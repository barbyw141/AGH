data {
    real alpha;
    real beta;
}

generated quantities {
    real gamma = gamma_rng (alpha, beta);
}
