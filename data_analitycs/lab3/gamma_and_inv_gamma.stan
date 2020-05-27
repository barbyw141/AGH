functions {
  vector gamma_solver(vector y, vector theta, real[] xr, int[] xi) {
    vector[3] output;
    
    output[1] = gamma_cdf(theta[1], y[1], y[2]) - y[3];
    output[2] = gamma_cdf(theta[2], y[1], y[2]) - (y[3] + 0.98);
    output[3] = y[1]/y[2] -8;
    
    return output;
  }
}

data {
  vector[2] theta;     
  vector[3] y_guess;
}

transformed data {
  vector[3] y;
  real xr[0];
  int xi[0];
  
  y = algebra_solver(gamma_solver, y_guess, theta, xr, xi);
}

generated quantities {
    real gamma = gamma_rng(y[1],y[2]);
    real inv_gamma = inv_gamma_rng(y[1],y[2]);
}