data {
    real alpha;
    real beta;
}

generated quantities {
    real inv_gamma = inv_gamma_rng (alpha, beta);
}
