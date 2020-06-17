data {
  int M;
  vector[M] miles;
}
generated quantities {
  real theta=fabs(normal_rng(0,0.236));
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(theta*miles[k]);
  }
}

//source: https://github.com/KAIR-ISZ

