function y = shift(x,k)
    if(k>0)
        y = [zeros(1,abs(k)) x(1:end-abs(k))];
    else 
        y = [x((abs(k)+1):end) zeros(1,abs(k))];
    end
end