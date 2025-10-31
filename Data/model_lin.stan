data {
  int N;
  vector[N] X;
  vector[N] Y;
}

parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}

model {
  Y[1:N] ~ normal(alpha + beta*X, sigma);
}
