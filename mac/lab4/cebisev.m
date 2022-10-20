function x = cebisev(a, b, k)
    for j = 1 : k
        x(j) = (b + a)/2 + ((b - a)/2) * cos((2i - 1)*pi/(2*k));
    end
end