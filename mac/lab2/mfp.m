function xc = mfp(f, a, b, k)
    fa = f(a);
    fb = f(b);
    for i = 1 : k
        c = (b * f(a) - a * f(b)) / (f(a) - f(b));
        fc = f(c);
        if fc == 0 
            break;
        end
        if sign(fa) * sign(fc) < 0
            b = c;
        else
            a = c;
        end
    end
    xc = (b * f(a) - a * f(b)) / (f(a) - f(b));
    
end