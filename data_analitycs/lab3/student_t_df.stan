data {
  real df;
  real mu;
  real sigma;
}

generated quantities {
    real student_t = student_t_rng(df, mu,sigma);
}
