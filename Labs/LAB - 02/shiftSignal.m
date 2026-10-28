function y = shiftSignal(x,k)
    n = length(x);

    if abs(k) >= n
        y = zeros(size(x));
        return;
    end

    if k > 0
        y = [zeros(1,k) x(1:n-k)];
    elseif k < 0
        k = abs(k);
        y = [x(k+1:end) zeros(1,k)];
    else
        y = x;
    end
end