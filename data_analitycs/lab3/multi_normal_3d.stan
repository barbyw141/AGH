data {
  vector[3] mu;
  matrix[3,3] sigma;
}

generated quantities {
    vector[3] multi_normal = multi_normal_rng(mu,sigma);
}

