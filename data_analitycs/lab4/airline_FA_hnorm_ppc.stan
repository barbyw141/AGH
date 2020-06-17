data {
  int M;
}

generated quantities {
  real lambda=fabs(normal_rng(0,1348));
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(lambda);
  }
}

//source: https://github.com/KAIR-ISZ

