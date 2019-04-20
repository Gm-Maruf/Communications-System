a= 20:50;
sum_vec = zeros(1,length(a));
sum_a = 0;
for ii = 1:length(a)
  sum_a = sum_a + a(ii);
  sum_vec(ii) = sum_a;
endfor

figure;
plot(sum_vec)
